#include "terminal.hpp"

using std::string;
using std::list;
using util::nat;

/* ===================== AUXILIARS ===================== */

static bool es_espera(const ubicacio& u) noexcept {
  return (u.filera() == -1 && u.placa() == 0 && u.pis() == 0);
}

static bool es_inexistent(const ubicacio& u) noexcept {
  return (u.filera() == -1 && u.placa() == -1 && u.pis() == -1);
}

static ubicacio u_espera() {
  return ubicacio(-1, 0, 0);
}

static ubicacio u_inexistent() {
  return ubicacio(-1, -1, -1);
}

static nat len10_from_long(nat l) {
  return l / 10;
}

/* ===== Helpers sobre dades "planes" (NO toquen privats) ===== */

static bool suport(string*** mag, nat i, nat j, nat k) {
  if (k == 0) return true;
  return !mag[i][j][k - 1].empty();
}

static bool cabe(string*** mag, nat m, nat h, nat i, nat j, nat k, nat len10) {
  if (j + len10 > m) return false;

  nat x = 0;
  while (x < len10) {
    if (!mag[i][j + x][k].empty()) return false;
    if (!suport(mag, i, j + x, k)) return false;
    ++x;
  }
  return true;
}

static bool lliure_fit(string*** mag, nat n, nat m, nat h, nat len10, nat& oi, nat& oj, nat& ok)
{
// ESTRATEGIA LLIURE
// cost: O(m*m*h)
// Pre: 
//  - mag representa un magatzem vàlid de dimensions n × m × h.
//  - len10 > 0.
//  - oi, oj, ok són variables on es poden escriure coordenades.
// Post:
//  - Si existeix en el magatzem un conjunt de len10 posicions consecutives
//    lliures, en una mateixa filera i pis, i totes amb suport adequat,
//    la funció retorna true i (oi, oj, ok) conté la ubicació inicial d’un
//    d’aquests conjunts segons l’estratègia LLIURE.
//  - L’estratègia LLIURE tria el conjunt lliure que deixa el mínim espai
//    lliure sobrant (best-fit); en cas d’empat, es tria el que està situat
//    en un pis més baix, després en una filera menor i, finalment, en una
//    posició més a l’esquerra.
//  - Si no existeix cap conjunt vàlid de len10 posicions, la funció retorna
//    false i el valor de (oi, oj, ok) no està definit.

  bool found = false;
  nat best_waste = 0;

  nat i = 0;
  while (i < n) {
    nat k = 0;
    while (k < h) {
      nat j = 0;
      while (j < m) {
        if (cabe(mag, m, h, i, j, k, len10)) {
          nat size = 0;
          while (j + size < m &&
                 mag[i][j + size][k].empty() &&
                 suport(mag, i, j + size, k))
          {
            ++size;
          }

          if (size >= len10) {
            nat waste = size - len10;

            if (!found ||
                waste < best_waste ||
                (waste == best_waste &&
                 (k < ok ||
                 (k == ok && (i < oi || (i == oi && j < oj))))))
            {
              found = true;
              best_waste = waste;
              oi = i;
              oj = j;
              ok = k;
            }
          }

          j += size;
        } else {
          ++j;
        }
      }
      ++k;
    }
    ++i;
  }

  return found;
}


static bool first_fit(string*** mag, nat n, nat m, nat h, nat len10,
                      nat& oi, nat& oj, nat& ok) {
  nat i = 0;
  while (i < n) {
    nat j = 0;
    while (j < m) {
      nat k = 0;
      while (k < h) {
        if (cabe(mag, m, h, i, j, k, len10)) {
          oi = i; oj = j; ok = k;
          return true;
        }
        ++k;
      }
      ++j;
    }
    ++i;
  }
  return false;
}

static void write_footprint(string*** mag, nat i, nat j, nat k, nat len10, const string& mat) {
  nat x = 0;
  while (x < len10) {
    mag[i][j + x][k] = mat;
    ++x;
  }
}

static void clear_footprint(string*** mag, nat i, nat j, nat k, nat len10) {
  nat x = 0;
  while (x < len10) {
    mag[i][j + x][k].clear();
    ++x;
  }
}

static bool te_alguna_cosa_a_sobre(string*** mag, nat h, nat i, nat j, nat k, nat len10) {
  if (k + 1 >= h) return false;

  nat x = 0;
  while (x < len10) {
    nat kk = k + 1;
    while (kk < h) {
      if (!mag[i][j + x][kk].empty()) return true;
      ++kk;
    }
    ++x;
  }
  return false;
}

/* ===================== PROCESSAR ESPERA (helper) ===================== */

static void processa_espera_impl(terminal::estrategia est,
                                 list<string>& espera,
                                 cataleg<nat>& longs,
                                 cataleg<ubicacio>& on,
                                 string*** mag,
                                 nat n, nat m, nat h,
                                 nat& ops)
{
  if (est == terminal::estrategia::FIRST_FIT) {
    bool mogut = true;
    while (mogut) {
      mogut = false;

      auto it = espera.end();
      while (it != espera.begin()) {
        --it;
        const string mat = *it;

        if (!longs.existeix(mat)) continue;
        nat L = longs[mat];
        if (L == 0) continue; // marcat com inexistent
        nat need = len10_from_long(L);

        nat pi = 0, pj = 0, pk = 0;
        if (first_fit(mag, n, m, h, need, pi, pj, pk)) {
          write_footprint(mag, pi, pj, pk, need, mat);
          on.assig(mat, ubicacio((int)pi, (int)pj, (int)pk));

          it = espera.erase(it);
          ++ops;      // espera -> magatzem
          mogut = true;
          break;      // recomençar des del final
        }
      }
    }
  }
  else {
    bool mogut = true;
    while (mogut) {
      mogut = false;

      auto it = espera.begin();
      while (it != espera.end()) {
        const string mat = *it;

        if (!longs.existeix(mat)) { ++it; continue; }
        nat L = longs[mat];
        if (L == 0) { ++it; continue; }
        nat need = len10_from_long(L);

        nat pi = 0, pj = 0, pk = 0;
        if (lliure_fit(mag, n, m, h, need, pi, pj, pk)) {
          write_footprint(mag, pi, pj, pk, need, mat);
          on.assig(mat, ubicacio((int)pi, (int)pj, (int)pk));

          it = espera.erase(it);
          ++ops;
          mogut = true;
          break;
        } else ++it;
      }
    }
  }
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
  nat i = 0;
  while (i < _n) {
    _magatzem[i] = new string*[_m];
    nat j = 0;
    while (j < _m) {
      _magatzem[i][j] = new string[_h];
      nat k = 0;
      while (k < _h) {
        _magatzem[i][j][k].clear();
        ++k;
      }
      ++j;
    }
    ++i;
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
  nat i = 0;
  while (i < _n) {
    _magatzem[i] = new string*[_m];
    nat j = 0;
    while (j < _m) {
      _magatzem[i][j] = new string[_h];
      nat k = 0;
      while (k < _h) {
        _magatzem[i][j][k] = b._magatzem[i][j][k];
        ++k;
      }
      ++j;
    }
    ++i;
  }
}

terminal& terminal::operator=(const terminal& b) {
  if (this == &b) return *this;

  if (_magatzem != nullptr) {
    nat i = 0;
    while (i < _n) {
      nat j = 0;
      while (j < _m) {
        delete[] _magatzem[i][j];
        ++j;
      }
      delete[] _magatzem[i];
      ++i;
    }
    delete[] _magatzem;
  }

  _n = b._n; _m = b._m; _h = b._h; _est = b._est;
  _on = b._on;
  _longs = b._longs;
  _espera = b._espera;
  _ops = b._ops;

  _magatzem = new string**[_n];
  nat i = 0;
  while (i < _n) {
    _magatzem[i] = new string*[_m];
    nat j = 0;
    while (j < _m) {
      _magatzem[i][j] = new string[_h];
      nat k = 0;
      while (k < _h) {
        _magatzem[i][j][k] = b._magatzem[i][j][k];
        ++k;
      }
      ++j;
    }
    ++i;
  }

  return *this;
}

terminal::~terminal() noexcept {
  if (_magatzem != nullptr) {
    nat i = 0;
    while (i < _n) {
      nat j = 0;
      while (j < _m) {
        delete[] _magatzem[i][j];
        ++j;
      }
      delete[] _magatzem[i];
      ++i;
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
  if (_on.existeix(m)) {
    ubicacio u = _on[m];
    if (es_inexistent(u)) return u_inexistent();
    return u;
  }
  return u_inexistent();
}

nat terminal::longitud(const string &m) const {
  if (!_on.existeix(m)) throw error(MatriculaInexistent);
  ubicacio u = _on[m];
  if (es_inexistent(u)) throw error(MatriculaInexistent);

  if (!_longs.existeix(m)) throw error(MatriculaInexistent);
  nat L = _longs[m];
  if (L == 0) throw error(MatriculaInexistent);
  return L;
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
  l.sort();
}

nat terminal::fragmentacio() const noexcept {
  nat frag = 0;

  nat i = 0;
  while (i < _n) {
    nat k = 0;
    while (k < _h) {
      nat j = 0;
      while (j < _m) {
        while (j < _m) {
          if (_magatzem[i][j][k].empty() && suport(_magatzem, i, j, k)) break;
          ++j;
        }
        if (j >= _m) break;

        nat start = j;
        while (j < _m && _magatzem[i][j][k].empty() && suport(_magatzem, i, j, k)) ++j;
        nat len = j - start;

        if (len == 1) ++frag;
      }
      ++k;
    }
    ++i;
  }

  return frag;
}

/* ===================== INSERIR ===================== */

void terminal::insereix_contenidor(const contenidor &c) {
  const string m = c.matricula();
  const nat l = c.longitud();
  const nat need = len10_from_long(l);

  if (_on.existeix(m)) {
    ubicacio u = _on[m];
    if (!es_inexistent(u)) throw error(MatriculaDuplicada);
  }

  nat pi = 0, pj = 0, pk = 0;

  bool ok;
  if (_est == estrategia::FIRST_FIT)
    ok = first_fit(_magatzem, _n, _m, _h, need, pi, pj, pk);
  else
    ok = lliure_fit(_magatzem, _n, _m, _h, need, pi, pj, pk);

  if (ok) {
    write_footprint(_magatzem, pi, pj, pk, need, m);
    _on.assig(m, ubicacio((int)pi, (int)pj, (int)pk));
    _longs.assig(m, l);

    ++_ops;
    processa_espera_impl(_est, _espera, _longs, _on, _magatzem, _n, _m, _h, _ops);
  } else {
    _espera.push_back(m);
    _on.assig(m, u_espera());
    _longs.assig(m, l);
    // NO ops
  }
}

/* ===================== RETIRAR ===================== */

void terminal::retira_contenidor(const string &m) {
  if (!_on.existeix(m)) throw error(MatriculaInexistent);
  ubicacio u = _on[m];
  if (es_inexistent(u)) throw error(MatriculaInexistent);

  // Si està a espera: eliminar (0 ops), però NO borrem del cataleg: marquem inexistent
  if (es_espera(u)) {
    auto it = _espera.begin();
    while (it != _espera.end()) {
      if (*it == m) { _espera.erase(it); break; }
      ++it;
    }
    _on.assig(m, u_inexistent());
    _longs.assig(m, 0);
    return;
  }

  // està al magatzem
  nat li = (nat)u.filera();
  nat lj = (nat)u.placa();
  nat lk = (nat)u.pis();

  nat Lm = _longs[m];
  if (Lm == 0) throw error(MatriculaInexistent);
  nat need = len10_from_long(Lm);

  // Cols afectades (cierre)
  bool* col = new bool[_m];
  nat jj = 0;
  while (jj < _m) { col[jj] = false; ++jj; }

  nat x = 0;
  while (x < need) { col[lj + x] = true; ++x; }

  // Llista de matrícules a moure
  nat maxmv = _on.quants();
  if (maxmv == 0) maxmv = 1;
  string* mv = new string[maxmv];
  nat mvn = 0;

  auto in_mv = [&](const string& s) -> bool {
    nat t = 0;
    while (t < mvn) {
      if (mv[t] == s) return true;
      ++t;
    }
    return false;
  };

  bool changed = true;
  while (changed) {
    changed = false;

    nat j = 0;
    while (j < _m) {
      if (!col[j]) { ++j; continue; }

      nat kk = lk + 1;
      while (kk < _h) {
        const string top = _magatzem[li][j][kk];
        if (!top.empty() && top != m) {
          if (!in_mv(top)) {
            mv[mvn++] = top;

            if (_on.existeix(top)) {
              ubicacio ut = _on[top];
              if (!es_espera(ut) && !es_inexistent(ut)) {
                nat Lt = _longs[top];
                if (Lt != 0) {
                  nat wt = len10_from_long(Lt);
                  nat tj = (nat)ut.placa();
                  nat xx = 0;
                  while (xx < wt && tj + xx < _m) {
                    if (!col[tj + xx]) { col[tj + xx] = true; changed = true; }
                    ++xx;
                  }
                }
              }
            }
          }
        }
        ++kk;
      }

      ++j;
    }
  }

  auto te_sobre = [&](const string& mat) -> bool {
    ubicacio ut = _on[mat];
    nat Lt = _longs[mat];
    nat wt = len10_from_long(Lt);
    nat i0 = (nat)ut.filera();
    nat j0 = (nat)ut.placa();
    nat k0 = (nat)ut.pis();
    return te_alguna_cosa_a_sobre(_magatzem, _h, i0, j0, k0, wt);
  };

  auto move_to_espera = [&](const string& mat) {
    ubicacio ut = _on[mat];
    nat Lt = _longs[mat];
    nat wt = len10_from_long(Lt);

    nat i0 = (nat)ut.filera();
    nat j0 = (nat)ut.placa();
    nat k0 = (nat)ut.pis();

    clear_footprint(_magatzem, i0, j0, k0, wt);
    _espera.push_back(mat);
    _on.assig(mat, u_espera());

    ++_ops; // magatzem -> espera
  };

  // Moure segons: lliure amb ubicació mínima
  while (mvn > 0) {
    int best = -1;
    ubicacio bestu = u_inexistent();

    nat idx = 0;
    while (idx < mvn) {
      const string mat = mv[idx];

      if (!_on.existeix(mat)) { mv[idx] = mv[mvn - 1]; --mvn; continue; }
      ubicacio ut = _on[mat];
      if (es_espera(ut) || es_inexistent(ut)) { mv[idx] = mv[mvn - 1]; --mvn; continue; }

      if (!te_sobre(mat)) {
        if (best == -1 || ut < bestu) {
          best = (int)idx;
          bestu = ut;
        }
      }
      ++idx;
    }

    // fallback (no hauria)
    if (best == -1) {
      nat idx2 = 0;
      while (idx2 < mvn) {
        const string mat = mv[idx2];
        if (_on.existeix(mat)) {
          ubicacio ut = _on[mat];
          if (!es_espera(ut) && !es_inexistent(ut)) {
            if (best == -1 || ut < bestu) {
              best = (int)idx2;
              bestu = ut;
            }
          }
        }
        ++idx2;
      }
    }

    if (best == -1) break;

    string mat = mv[(nat)best];
    mv[(nat)best] = mv[mvn - 1];
    --mvn;

    if (_on.existeix(mat) && !es_espera(_on[mat]) && !es_inexistent(_on[mat])) {
      move_to_espera(mat);
    }
  }

  // Retirar objectiu del magatzem
  clear_footprint(_magatzem, li, lj, lk, need);
  ++_ops; // retirar directament del magatzem

  // NO eliminem: marquem com inexistent
  _on.assig(m, u_inexistent());
  _longs.assig(m, 0);

  delete[] mv;
  delete[] col;

  processa_espera_impl(_est, _espera, _longs, _on, _magatzem, _n, _m, _h, _ops);
}
