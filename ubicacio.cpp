#include "ubicacio.hpp"

ubicacio::ubicacio(int i, int j, int k) {
/*
Pre:
  i,j,k son enters que representen una ubicació possible.
Post:
  Si (i,j,k) és una ubicació vàlida (magatzem, espera o inexistent),
  crea l’objecte amb aquests valors. En cas contrari, llença error(UbicacioIncorrecta).
Cost:
  O(1)
*/
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
/*
Pre: Cert
Post: Retorna el valor de la filera (resp. placa, pis) de la ubicació.
Cost: O(1)
*/

int ubicacio::filera() const noexcept { return _filera; }
int ubicacio::placa() const noexcept { return _placa; }
int ubicacio::pis() const noexcept { return _pis; }
/*
Pre: Cert
Post:
  Defineix un ordre total entre ubicacions, comparant primer filera,
  després placa i finalment pis.
Cost:
  O(1)
*/

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
