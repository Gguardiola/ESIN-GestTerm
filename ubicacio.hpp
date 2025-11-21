#ifndef _UBICACIO_HPP
#define _UBICACIO_HPP 

#include <esin/error>
#include <esin/util>

class ubicacio {
public:
  ubicacio(int i, int j, int k);

  ubicacio(const ubicacio& u);
  ubicacio& operator=(const ubicacio& u);
  ~ubicacio() noexcept;

  int filera() const noexcept;
  int placa() const noexcept;
  int pis() const noexcept;

  bool operator==(const ubicacio &u) const noexcept;
  bool operator!=(const ubicacio &u) const noexcept;
  bool operator<(const ubicacio &u) const noexcept;
  bool operator<=(const ubicacio &u) const noexcept;
  bool operator>(const ubicacio &u) const noexcept;
  bool operator>=(const ubicacio &u) const noexcept;

  static constexpr int UbicacioIncorrecta = 10;

private:
  #include "ubicacio.rep"
};
#endif
