#ifndef _CATALEG_HPP
#define _CATALEG_HPP 
#include <string>
#include <esin/error>
#include <esin/util>

using std::string;
using util::nat;

template <typename Valor>
class cataleg {
public:
  explicit cataleg(nat numelems);

  cataleg(const cataleg& c);
  cataleg& operator=(const cataleg& c);
  ~cataleg() noexcept;

  void assig(const string &k, const Valor &v);

  void elimina(const string &k);

  bool existeix(const string &k) const noexcept;

  Valor operator[](const string &k) const;

  nat quants() const noexcept;

  static constexpr int ClauStringBuit = 30;
  static constexpr int ClauInexistent = 31;

private:
  #include "cataleg.rep"
};
#include "cataleg.t"
#endif
