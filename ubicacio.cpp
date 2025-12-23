#include "ubicacio.hpp"

ubicacio::ubicacio(int i, int j, int k) {
    bool ok =
        (i >= 0 && j >= 0 && k >= 0) ||
        (i == -1 && j == 0 && k == 0) ||
        (i == -1 && j == -1 && k == -1);

    if (!ok) throw error(UbicacioIncorrecta);

    _filera = i;
    _placa = j;
    _pis = k;
}

ubicacio::ubicacio(const ubicacio &u)
    : _filera(u._filera), _placa(u._placa), _pis(u._pis) {}

ubicacio& ubicacio::operator=(const ubicacio &u) {
    if (this != &u) {
        _filera = u._filera;
        _placa = u._placa;
        _pis = u._pis;
    }
    return *this;
}

ubicacio::~ubicacio() noexcept {}

int ubicacio::filera() const noexcept { return _filera; }
int ubicacio::placa() const noexcept { return _placa; }
int ubicacio::pis() const noexcept { return _pis; }

bool ubicacio::operator==(const ubicacio &u) const noexcept {
    return _filera == u._filera &&
           _placa == u._placa &&
           _pis == u._pis;
}
bool ubicacio::operator!=(const ubicacio &u) const noexcept {
    return !(*this == u);
}
bool ubicacio::operator<(const ubicacio &u) const noexcept {
    if (_filera < u._filera) return true;
    if (_filera > u._filera) return false;
    if (_placa < u._placa) return true;
    if (_placa > u._placa) return false;
    return _pis < u._pis;
}
bool ubicacio::operator<=(const ubicacio &u) const noexcept {
    return *this < u || *this == u;
}
bool ubicacio::operator>(const ubicacio &u) const noexcept {
    return u < *this;
}
bool ubicacio::operator>=(const ubicacio &u) const noexcept {
    return !(*this < u);
}
