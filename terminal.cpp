#include "terminal.hpp"

#include <algorithm>  // sort
#include <vector>

using std::string;
using std::list;
using std::vector;
using util::nat;

/* ===================== AUXILIARS ===================== */

static bool es_espera(const ubicacio& u) noexcept {
  return (u.filera() == -1 && u.placa() == 0 && u.pis() == 0);
}

static bool es_inexistent(const ubicacio& u) noexcept {
  return (u.filera() == -1 && u.placa() == -1 && u.pis() == -1);
}

/* ===================== CONSTRUCTOR / 3 GRANS ===================== */

terminal::terminal(nat n, nat m, nat h, estrategia st)
  : _n(n), _m(m), _h(h), _est(st),
    _magatzem(nullptr),
    _on((n == 0 || m == 0 || h == 0) ? 1 : (n*m*h + 1)),
    _longs((n == 0 || m == 0 || h == 0) ? 1 : (n*m*h + 1)),
    _espera(),
    _ops(0)
{
  if (n == 0) throw error(NumFileresIncorr);
  if (m == 0) throw error(NumPlacesIncorr);
  if (h == 0 || h > HMAX) throw error(AlcadaMaxIncorr);
  if (st != estrategia::FIRST_FIT && st != estrategia::LLIURE) throw error(EstrategiaIncorr);

  _magatzem = new string**[_n];
  for (nat i = 0; i < _n; ++i) {
    _magatzem[i] = new string*[_m];
    for (nat j = 0; j < _m; ++j) {
      _magatzem[i][j] = new string[_h];
      for (nat k = 0; k < _h; ++k) _magatzem[i][j][k].clear();
    }
  }
}

terminal::terminal(const terminal& b)
  : _n(b._n), _m(b._m), _h(b._h), _est(b._est),
    _magatzem(nullptr),
    _on(b._on),
    _longs(b._longs),
    _espera(b._espera),
    _ops(b._ops)
{
  _magatzem = new string**[_n];
  for (nat i = 0; i < _n; ++i) {
    _magatzem[i] = new string*[_m];
    for (nat j = 0; j < _m; ++j) {
      _magatzem[i][j] = new string[_h];
      for (nat k = 0; k < _h; ++k) _magatzem[i][j][k] = b._magatzem[i][j][k];
    }
  }
}

terminal& terminal::operator=(const terminal& b) {
  if (this == &b) return *this;

  // alliberar magatzem actual
  for (nat i = 0; i < _n; ++i) {
    for (nat j = 0; j < _m; ++j) delete[] _magatzem[i][j];
    delete[] _magatzem[i];
  }
  delete[] _magatzem;

  _n = b._n; _m = b._m; _h = b._h; _est = b._est;
  _on = b._on;
  _longs = b._longs;
  _espera = b._espera;
  _ops = b._ops;

  _magatzem = new string**[_n];
  for (nat i = 0; i < _n; ++i) {
    _magatzem[i] = new string*[_m];
    for (nat j = 0; j < _m; ++j) {
      _magatzem[i][j] = new string[_h];
      for (nat k = 0; k < _h; ++k) _magatzem[i][j][k] = b._magatzem[i][j][k];
    }
  }

  return *this;
}

terminal::~terminal() noexcept {
  if (_magatzem != nullptr) {
    for (nat i = 0; i < _n; ++i) {
      for (nat j = 0; j < _m; ++j) delete[] _magatzem[i][j];
      delete[] _magatzem[i];
    }
    delete[] _magatzem;
  }
}

/* ===================== GETTERS ===================== */

nat terminal::num_fileres() const noexcept { return _n; }
nat terminal::num_places() const noexcept { return _m; }
nat terminal::num_pisos() const noexcept { return _h; }
terminal::estrategia terminal::quina_estrategia() const noexcept { return _est; }
nat terminal::ops_grua() const noexcept { return _ops; }

/* ===================== CONSULTES ===================== */

ubicacio terminal::on(const string &m) const noexcept {
  if (_on.existeix(m)) return _on[m];
  return ubicacio(-1, -1, -1); // inexistent
}

nat terminal::longitud(const string &m) const {
  if (!_longs.existeix(m)) throw error(MatriculaInexistent);
  return _longs[m];
}

void terminal::contenidor_ocupa(const ubicacio &u, string &m) const {
  int i = u.filera();
  int j = u.placa();
  int k = u.pis();

  if (i < 0 || j < 0 || k < 0 ||
      i >= (int)_n || j >= (int)_m || k >= (int)_h)
    throw error(UbicacioNoMagatzem);

  m = _magatzem[i][j][k];
}

void terminal::area_espera(list<string> &l) const noexcept {
  l = _espera;

  // ordenar alfabèticament (sense usar altres contenidors prohibits: aquí ja tenim list)
  // però list::sort existeix i és perfecte.
  l.sort();
}

nat terminal::fragmentacio() const noexcept {
  // Comptem places "aïllades": segments d'espai buit d'amplada 1 (en una mateixa filera i pis)
  nat frag = 0;

  for (nat i = 0; i < _n; ++i) {
    for (nat k = 0; k < _h; ++k) {
      nat j = 0;
      while (j < _m) {
        if (_magatzem[i][j][k].empty()) {
          nat start = j;
          while (j < _m && _magatzem[i][j][k].empty()) ++j;
          nat len = j - start;
          if (len == 1) ++frag;
        } else {
          ++j;
        }
      }
    }
  }

  return frag;
}

/* ===================== FIRST_FIT (INSERIR / RETIRAR) ===================== */

void terminal::insereix_contenidor(const contenidor &c) {
  const string m = c.matricula();
  const nat l = c.longitud();
  const nat need = l / 10;

  if (_on.existeix(m)) throw error(MatriculaDuplicada);

  // Funció local per trobar FIRST_FIT
  auto try_place = [&](const string& mat, nat len10, ubicacio& out) -> bool {
    for (nat i = 0; i < _n; ++i) {
      for (nat k = 0; k < _h; ++k) {
        nat j = 0;
        while (j < _m) {
          if (!_magatzem[i][j][k].empty()) { ++j; continue; }

          nat start = j;
          while (j < _m && _magatzem[i][j][k].empty()) ++j;
          nat free_len = j - start;

          if (free_len >= len10) {
            out = ubicacio((int)i, (int)start, (int)k);
            return true;
          }
        }
      }
    }
    return false;
  };

  ubicacio pos(-1, -1, -1);
  if (try_place(m, need, pos)) {
    // Escriure matrícula a totes les places ocupades
    nat i = (nat)pos.filera();
    nat j = (nat)pos.placa();
    nat k = (nat)pos.pis();
    for (nat x = 0; x < need; ++x) _magatzem[i][j + x][k] = m;

    _on.assig(m, pos);
    _longs.assig(m, l);
    ++_ops;
    return;
  }

  // No cap: a l'àrea d'espera
  _espera.push_back(m);
  _on.assig(m, ubicacio(-1, 0, 0)); // espera
  _longs.assig(m, l);
  ++_ops;
}

void terminal::retira_contenidor(const string &m) {
  if (!_on.existeix(m)) throw error(MatriculaInexistent);

  ubicacio u = _on[m];
  nat l = _longs[m];
  nat need = l / 10;

  // 1) Si està a espera: treure de la llista
  if (es_espera(u)) {
    for (auto it = _espera.begin(); it != _espera.end(); ++it) {
      if (*it == m) { _espera.erase(it); break; }
    }
  }
  // 2) Si està al magatzem: buidar
  else if (!es_inexistent(u)) {
    nat i = (nat)u.filera();
    nat j = (nat)u.placa();
    nat k = (nat)u.pis();
    for (nat x = 0; x < need; ++x) _magatzem[i][j + x][k].clear();
  }

  _on.elimina(m);
  _longs.elimina(m);
  ++_ops;

  // 3) Intentar recol·locar des de l'àrea d'espera amb FIRST_FIT
  auto try_place = [&](const string& mat, nat len10, ubicacio& out) -> bool {
    for (nat i = 0; i < _n; ++i) {
      for (nat k = 0; k < _h; ++k) {
        nat j = 0;
        while (j < _m) {
          if (!_magatzem[i][j][k].empty()) { ++j; continue; }

          nat start = j;
          while (j < _m && _magatzem[i][j][k].empty()) ++j;
          nat free_len = j - start;

          if (free_len >= len10) {
            out = ubicacio((int)i, (int)start, (int)k);
            return true;
          }
        }
      }
    }
    return false;
  };

  auto it = _espera.begin();
  while (it != _espera.end()) {
    const string me = *it;
    nat le = _longs[me];
    nat neede = le / 10;

    ubicacio pos(-1, -1, -1);
    if (try_place(me, neede, pos)) {
      nat i = (nat)pos.filera();
      nat j = (nat)pos.placa();
      nat k = (nat)pos.pis();
      for (nat x = 0; x < neede; ++x) _magatzem[i][j + x][k] = me;

      _on.assig(me, pos);
      it = _espera.erase(it);
      ++_ops; // moviment de grua per recol·locar
    } else {
      ++it;
    }
  }
}
