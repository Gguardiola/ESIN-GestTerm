#include "contenidor.hpp"

// Constructor
contenidor::contenidor(const string &m, nat l) {
    if (m.empty()) throw error(MatriculaIncorrecta);
    for (char c : m) {
        if (!((c >= 'A' && c <= 'Z') || (c >= '0' && c <= '9')))
            throw error(MatriculaIncorrecta);
    }
    if (l != 10 && l != 20 && l != 30)
        throw error(LongitudIncorrecta);

    _matricula = m;
    _longitud = l;
}

// Copia
contenidor::contenidor(const contenidor &c)
    : _matricula(c._matricula), _longitud(c._longitud) {}

contenidor& contenidor::operator=(const contenidor &c) {
    if (this != &c) {
        _matricula = c._matricula;
        _longitud = c._longitud;
    }
    return *this;
}

contenidor::~contenidor() noexcept {}

nat contenidor::longitud() const noexcept { return _longitud; }
string contenidor::matricula() const noexcept { return _matricula; }

bool contenidor::operator==(const contenidor &c) const noexcept {
    return _matricula == c._matricula && _longitud == c._longitud;
}
bool contenidor::operator!=(const contenidor &c) const noexcept {
    return !(*this == c);
}
bool contenidor::operator<(const contenidor &c) const noexcept {
    if (_matricula < c._matricula) return true;
    if (_matricula > c._matricula) return false;
    return _longitud < c._longitud;
}
bool contenidor::operator<=(const contenidor &c) const noexcept {
    return *this < c || *this == c;
}
bool contenidor::operator>(const contenidor &c) const noexcept {
    return c < *this;
}
bool contenidor::operator>=(const contenidor &c) const noexcept {
    return !(*this < c);
}
