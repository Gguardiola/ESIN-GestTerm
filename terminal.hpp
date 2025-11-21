#ifndef _TERMINAL_HPP
#define _TERMINAL_HPP 
#include <list>
#include <string>
#include <esin/error>
#include <esin/util>

#include "cataleg.hpp"
#include "contenidor.hpp"
#include "ubicacio.hpp"

using std::string;
using std::list;
using util::nat;

class terminal {
public:
  static constexpr nat HMAX = 7;
  
  enum class estrategia { FIRST_FIT, LLIURE };

  terminal(nat n, nat m, nat h, estrategia st);

  terminal(const terminal& b);
  terminal& operator=(const terminal& b);
  ~terminal() noexcept;

  void insereix_contenidor(const contenidor &c);

  void retira_contenidor(const string &m);

  ubicacio on(const string &m) const noexcept;

  nat longitud(const string &m) const;

  void contenidor_ocupa(const ubicacio &u, string &m) const;  

  nat fragmentacio() const noexcept;

  nat ops_grua() const noexcept;

  void area_espera(list<string> &l) const noexcept;

  nat num_fileres() const noexcept;

  nat num_places() const noexcept;

  nat num_pisos() const noexcept;

  estrategia quina_estrategia() const noexcept; 

  static constexpr int NumFileresIncorr = 40;
  static constexpr int NumPlacesIncorr  = 41;
  static constexpr int AlcadaMaxIncorr  = 42;
  static constexpr int EstrategiaIncorr = 43;
  static constexpr int MatriculaDuplicada  = 44;
  static constexpr int MatriculaInexistent = 45;
  static constexpr int UbicacioNoMagatzem  = 46;

private:
  #include "terminal.rep"
};
#endif
