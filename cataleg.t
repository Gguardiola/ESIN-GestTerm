#include <string>

using std::string;

// ======================
// Funció hash auxiliar
// ======================
static nat hash_string(const string &s, nat m) {
    nat h = 0;
    for (char c : s) {
        h = h * 131 + (unsigned char)c;
    }
    return h % m;
}

// ======================
// Constructores / 3 grans
// ======================

template <typename Valor>
cataleg<Valor>::cataleg(nat numelems) {
    if (numelems == 0) numelems = 1;

    _mida = numelems * 2 + 1;
    _quants = 0;

    _taula = new entrada[_mida];
    for (nat i = 0; i < _mida; ++i) {
        _taula[i].ocupada = false;
        _taula[i].esborrada = false;
        _taula[i].valor = nullptr;
    }
}

template <typename Valor>
cataleg<Valor>::cataleg(const cataleg &c)
    : _mida(c._mida), _quants(c._quants) {

    _taula = new entrada[_mida];
    for (nat i = 0; i < _mida; ++i) {
        _taula[i].ocupada = c._taula[i].ocupada;
        _taula[i].esborrada = c._taula[i].esborrada;
        _taula[i].clau = c._taula[i].clau;
        if (c._taula[i].ocupada) {
            _taula[i].valor = new Valor(*c._taula[i].valor);
        } else {
            _taula[i].valor = nullptr;
        }
    }
}

template <typename Valor>
cataleg<Valor>& cataleg<Valor>::operator=(const cataleg &c) {
    if (this != &c) {
        // Alliberar memòria actual
        for (nat i = 0; i < _mida; ++i) {
            if (_taula[i].ocupada) {
                delete _taula[i].valor;
            }
        }
        delete[] _taula;

        _mida = c._mida;
        _quants = c._quants;

        _taula = new entrada[_mida];
        for (nat i = 0; i < _mida; ++i) {
            _taula[i].ocupada = c._taula[i].ocupada;
            _taula[i].esborrada = c._taula[i].esborrada;
            _taula[i].clau = c._taula[i].clau;
            if (c._taula[i].ocupada) {
                _taula[i].valor = new Valor(*c._taula[i].valor);
            } else {
                _taula[i].valor = nullptr;
            }
        }
    }
    return *this;
}

template <typename Valor>
cataleg<Valor>::~cataleg() noexcept {
    for (nat i = 0; i < _mida; ++i) {
        if (_taula[i].ocupada) {
            delete _taula[i].valor;
        }
    }
    delete[] _taula;
}

// ======================
// Mètodes públics
// ======================

template <typename Valor>
void cataleg<Valor>::assig(const string &k, const Valor &v) {
    if (k.empty()) {
        throw error(ClauStringBuit);
    }

    nat h = hash_string(k, _mida);
    nat first_deleted = _mida;

    for (nat i = 0; i < _mida; ++i) {
        nat pos = (h + i) % _mida;

        if (_taula[pos].ocupada) {
            if (_taula[pos].clau == k) {
                *_taula[pos].valor = v;
                return;
            }
        } else {
            if (_taula[pos].esborrada && first_deleted == _mida) {
                first_deleted = pos;
            } else if (!_taula[pos].esborrada) {
                nat ins = (first_deleted != _mida) ? first_deleted : pos;

                _taula[ins].clau = k;
                _taula[ins].valor = new Valor(v);
                _taula[ins].ocupada = true;
                _taula[ins].esborrada = false;
                ++_quants;
                return;
            }
        }
    }
}

template <typename Valor>
void cataleg<Valor>::elimina(const string &k) {
    if (k.empty()) {
        throw error(ClauInexistent);
    }

    nat h = hash_string(k, _mida);

    for (nat i = 0; i < _mida; ++i) {
        nat pos = (h + i) % _mida;

        if (!_taula[pos].ocupada && !_taula[pos].esborrada) {
            break;
        }
        if (_taula[pos].ocupada && _taula[pos].clau == k) {
            delete _taula[pos].valor;
            _taula[pos].valor = nullptr;
            _taula[pos].ocupada = false;
            _taula[pos].esborrada = true;
            --_quants;
            return;
        }
    }
    throw error(ClauInexistent);
}

template <typename Valor>
bool cataleg<Valor>::existeix(const string &k) const noexcept {
    if (k.empty()) return false;

    nat h = hash_string(k, _mida);

    for (nat i = 0; i < _mida; ++i) {
        nat pos = (h + i) % _mida;

        if (!_taula[pos].ocupada && !_taula[pos].esborrada) {
            return false;
        }
        if (_taula[pos].ocupada && _taula[pos].clau == k) {
            return true;
        }
    }
    return false;
}

template <typename Valor>
Valor cataleg<Valor>::operator[](const string &k) const {
    if (k.empty()) {
        throw error(ClauInexistent);
    }

    nat h = hash_string(k, _mida);

    for (nat i = 0; i < _mida; ++i) {
        nat pos = (h + i) % _mida;

        if (!_taula[pos].ocupada && !_taula[pos].esborrada) {
            break;
        }
        if (_taula[pos].ocupada && _taula[pos].clau == k) {
            return *_taula[pos].valor;
        }
    }
    throw error(ClauInexistent);
}

template <typename Valor>
nat cataleg<Valor>::quants() const noexcept {
    return _quants;
}
