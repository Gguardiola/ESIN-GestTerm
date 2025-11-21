#ifndef _CONTENIDOR_HPP
#define _CONTENIDOR_HPP 

#include <string>
#include <esin/error>
#include <esin/util>

using std::string;
using util::nat;

class contenidor {
public:
  contenidor(const string &m, nat l);

  contenidor(const contenidor &u);
  contenidor& operator=(const contenidor &u);
  ~contenidor() noexcept;

  nat longitud() const noexcept;
  string matricula() const noexcept;

  bool operator==(const contenidor &c) const noexcept;
  bool operator!=(const contenidor &c) const noexcept;
  bool operator<(const contenidor &c) const noexcept;
  bool operator<=(const contenidor &c) const noexcept;
  bool operator>(const contenidor &c) const noexcept;
  bool operator>=(const contenidor &c) const noexcept;

  static constexpr int MatriculaIncorrecta = 20;
  static constexpr int LongitudIncorrecta = 21;

private:
  #include "contenidor.rep"
};
#endif
