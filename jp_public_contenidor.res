###!----------------------------------------------
###!
###! JOCS DE PROVES DE LA CLASSE CONTENIDOR
###!
###!----------------------------------------------
###!
###!
###!------------------------------------------------------------------
###1 Errors
###!------------------------------------------------------------------
###!
###!------------------------------------------------------------------
###1.1 Error 20: Matricula incorrecta
###!------------------------------------------------------------------
###!
#init c contenidor AAAAAAAAAAAa 10
Error::contenidor:20:Matricula incorrecta.
##Error::contenidor:20:Matricula incorrecta.
#init c contenidor ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstxyz 10
Error::contenidor:20:Matricula incorrecta.
##Error::contenidor:20:Matricula incorrecta.
#init c contenidor ABCÇDEFGHIJKLMNÑOPQRSTUVWXYZ 10
Error::contenidor:20:Matricula incorrecta.
##Error::contenidor:20:Matricula incorrecta.
#init c contenidor ABCDEFGHIJKLMNOPQRSTUVWXYZÁÀÉÈÍÌÓÒÚÙÄËÏÖÜÂÊÎÔÛ 10
Error::contenidor:20:Matricula incorrecta.
##Error::contenidor:20:Matricula incorrecta.
#init c contenidor ABCDEFGHIJKLMNOPQRSTUVWXYZÇÑÁÀÉÈÍÌÓÒÚÙÄËÏÖÜÂÊÎÔÛabcdefghijklmnopqrstxyzçñáàéèíìóòúùäëïöüâêîôû[]()!"·$%&/=?¿*-_.:,;\ºª@#~¬{}´`^ 10
Error::contenidor:20:Matricula incorrecta.
##Error::contenidor:20:Matricula incorrecta.
#init c contenidor ABCDEFGHIJKLMNOPQRSTUVWXYZÇÑÁÀÉÈÍÌÓÒÚÙÄËÏÖÜÂÊÎÔÛabcdefghijklmnopqrstxyzçñáàéèíìóòúùäëïöüâêîôû 11
Error::contenidor:20:Matricula incorrecta.
##Error::contenidor:20:Matricula incorrecta.
###!
###!
###!----------------------------------------------
###1.2 Error 21: Longitud incorrecta
###!----------------------------------------------
###!
#init c contenidor ABCDEFGHIJKLMNOPQRSTUVWXYZ 11
Error::contenidor:21:Longitud incorrecta.
##Error::contenidor:21:Longitud incorrecta.
#init c contenidor ABCDEFGHIJKLMNOPQRSTUVWXYZ 100
Error::contenidor:21:Longitud incorrecta.
##Error::contenidor:21:Longitud incorrecta.
#init c contenidor ABCDEFGHIJKLMNOPQRSTUVWXYZ 12
Error::contenidor:21:Longitud incorrecta.
##Error::contenidor:21:Longitud incorrecta.
#init c contenidor ABCDEFGHIJKLMNOPQRSTUVWXYZ 210
Error::contenidor:21:Longitud incorrecta.
##Error::contenidor:21:Longitud incorrecta.
###!
###!
###!
###!----------------------------------------------
###2. Mètodes consultors
###!----------------------------------------------
###!
#init a1 contenidor A1 10
#init a2 contenidor A1 20
#init a3 contenidor A1 30
#init b1 contenidor B1 10
#init b2 contenidor B1 20
#init b3 contenidor B1 30
###!
###!
###!----------------------------------------------
###2.1 Matricula
###!----------------------------------------------
###!
#a1 matricula
A1
##A1
#a2 matricula
A1
##A1
#a3 matricula
A1
##A1
#b1 matricula
B1
##B1
#b2 matricula
B1
##B1
#b3 matricula
B1
##B1
###!
###!
###!----------------------------------------------
###2.2 Longitud
###!----------------------------------------------
###!
#a1 longitud
10
##10
#a2 longitud
20
##20
#a3 longitud
30
##30
#b1 longitud
10
##10
#b2 longitud
20
##20
#b3 longitud
30
##30
###!
###!
###!
###!----------------------------------------------
###3 Operadors de comparacio
###!----------------------------------------------
###!
###!----------------------------------------------
###3.1 Operador ==
###!----------------------------------------------
###!
#a1 == a1
true
##true
#a1 == a2
false
##false
#a1 == a3
false
##false
#a1 == b1
false
##false
#a1 == b2
false
##false
#a1 == b3
false
##false
#a2 == a1
false
##false
#a2 == a2
true
##true
#a2 == a3
false
##false
#a2 == b1
false
##false
#a2 == b2
false
##false
#a2 == b3
false
##false
#a3 == a1
false
##false
#a3 == a2
false
##false
#a3 == a3
true
##true
#a3 == b1
false
##false
#a3 == b2
false
##false
#a3 == b3
false
##false
#b1 == a1
false
##false
#b1 == a2
false
##false
#b1 == a3
false
##false
#b1 == b1
true
##true
#b1 == b2
false
##false
#b1 == b3
false
##false
#b2 == a1
false
##false
#b2 == a2
false
##false
#b2 == a3
false
##false
#b2 == b1
false
##false
#b2 == b2
true
##true
#b2 == b3
false
##false
#b3 == a1
false
##false
#b3 == a2
false
##false
#b3 == a3
false
##false
#b3 == b1
false
##false
#b3 == b2
false
##false
#b3 == b3
true
##true
###!
###!
###!----------------------------------------------
###3.2 Operador =!
###!----------------------------------------------
###!
#a1 != a1
false
##false
#a1 != a2
true
##true
#a1 != a3
true
##true
#a1 != b1
true
##true
#a1 != b2
true
##true
#a1 != b3
true
##true
#a2 != a1
true
##true
#a2 != a2
false
##false
#a2 != a3
true
##true
#a2 != b1
true
##true
#a2 != b2
true
##true
#a2 != b3
true
##true
#a3 != a1
true
##true
#a3 != a2
true
##true
#a3 != a3
false
##false
#a3 != b1
true
##true
#a3 != b2
true
##true
#a3 != b3
true
##true
#b1 != a1
true
##true
#b1 != a2
true
##true
#b1 != a3
true
##true
#b1 != b1
false
##false
#b1 != b2
true
##true
#b1 != b3
true
##true
#b2 != a2
true
##true
#b2 != a3
true
##true
#b2 != b1
true
##true
#b2 != b2
false
##false
#b2 != b3
true
##true
#b3 != a1
true
##true
#b3 != a2
true
##true
#b3 != a3
true
##true
#b3 != b1
true
##true
#b3 != b2
true
##true
#b3 != b3
false
##false
###!
###!
###!----------------------------------------------
###3.3 Operador <
###!----------------------------------------------
###!
#a1 < a1
false
##false
#a1 < a2
true
##true
#a1 < a3
true
##true
#a1 < b1
true
##true
#a1 < b2
true
##true
#a1 < b3
true
##true
#a2 < a1
false
##false
#a2 < a2
false
##false
#a2 < a3
true
##true
#a2 < b1
true
##true
#a2 < b2
true
##true
#a2 < b3
true
##true
#a3 < a1
false
##false
#a3 < a2
false
##false
#a3 < a3
false
##false
#a3 < b1
true
##true
#a3 < b2
true
##true
#a3 < b3
true
##true
#b1 < a1
false
##false
#b1 < a2
false
##false
#b1 < a3
false
##false
#b1 < b1
false
##false
#b1 < b2
true
##true
#b1 < b3
true
##true
#b2 < a1
false
##false
#b2 < a2
false
##false
#b2 < a3
false
##false
#b2 < b1
false
##false
#b2 < b2
false
##false
#b2 < b3
true
##true
#b3 < a1
false
##false
#b3 < a2
false
##false
#b3 < a3
false
##false
#b3 < b1
false
##false
#b3 < b2
false
##false
#b3 < b3
false
##false
###!
###!
###!----------------------------------------------
###3.4 Operador <=
###!----------------------------------------------
###!
#a1 <= a1
true
##true
#a1 <= a2
true
##true
#a1 <= a3
true
##true
#a1 <= b1
true
##true
#a1 <= b2
true
##true
#a1 <= b3
true
##true
#a2 <= a1
false
##false
#a2 <= a2
true
##true
#a2 <= a3
true
##true
#a2 <= b1
true
##true
#a2 <= b2
true
##true
#a2 <= b3
true
##true
#a3 <= a1
false
##false
#a3 <= a2
false
##false
#a3 <= a3
true
##true
#a3 <= b1
true
##true
#a3 <= b2
true
##true
#a3 <= b3
true
##true
#b1 <= a1
false
##false
#b1 <= a2
false
##false
#b1 <= a3
false
##false
#b1 <= b1
true
##true
#b1 <= b2
true
##true
#b1 <= b3
true
##true
#b2 <= a1
false
##false
#b2 <= a2
false
##false
#b2 <= a3
false
##false
#b2 <= b1
false
##false
#b2 <= b2
true
##true
#b2 <= b3
true
##true
#b3 <= a1
false
##false
#b3 <= a2
false
##false
#b3 <= a3
false
##false
#b3 <= b1
false
##false
#b3 <= b2
false
##false
#b3 <= b3
true
##true
###!
###!
###!----------------------------------------------
###3.5 Operador >
###!----------------------------------------------
###!
#a1 > a1
false
##false
#a1 > a2
false
##false
#a1 > a3
false
##false
#a1 > b1
false
##false
#a1 > b2
false
##false
#a1 > b3
false
##false
#a2 > a1
true
##true
#a2 > a2
false
##false
#a2 > a3
false
##false
#a2 > b1
false
##false
#a2 > b2
false
##false
#a2 > b3
false
##false
#a3 > a1
true
##true
#a3 > a2
true
##true
#a3 > a3
false
##false
#a3 > b1
false
##false
#a3 > b2
false
##false
#a3 > b3
false
##false
#b1 > a1
true
##true
#b1 > a2
true
##true
#b1 > a3
true
##true
#b1 > b1
false
##false
#b1 > b2
false
##false
#b1 > b3
false
##false
#b2 > a1
true
##true
#b2 > a2
true
##true
#b2 > a3
true
##true
#b2 > b1
true
##true
#b2 > b2
false
##false
#b2 > b3
false
##false
#b3 > a1
true
##true
#b3 > a2
true
##true
#b3 > a3
true
##true
#b3 > b1
true
##true
#b3 > b2
true
##true
#b3 > b3
false
##false
###!
###!
###!----------------------------------------------
###3.6 Operador >=
###!----------------------------------------------
###!
#a1 >= a1
true
##true
#a1 >= a2
false
##false
#a1 >= a3
false
##false
#a1 >= b1
false
##false
#a1 >= b2
false
##false
#a1 >= b3
false
##false
#a2 >= a1
true
##true
#a2 >= a2
true
##true
#a2 >= a3
false
##false
#a2 >= b1
false
##false
#a2 >= b2
false
##false
#a2 >= b3
false
##false
#a3 >= a1
true
##true
#a3 >= a2
true
##true
#a3 >= a3
true
##true
#a3 >= b1
false
##false
#a3 >= b2
false
##false
#a3 >= b3
false
##false
#b1 >= a1
true
##true
#b1 >= a2
true
##true
#b1 >= a3
true
##true
#b1 >= b1
true
##true
#b1 >= b2
false
##false
#b1 >= b3
false
##false
#b2 >= a1
true
##true
#b2 >= a2
true
##true
#b2 >= a3
true
##true
#b2 >= b1
true
##true
#b2 >= b2
true
##true
#b2 >= b3
false
##false
#b3 >= a1
true
##true
#b3 >= a2
true
##true
#b3 >= a3
true
##true
#b3 >= b1
true
##true
#b3 >= b2
true
##true
#b3 >= b3
true
##true
###!
###!
###!
###!----------------------------------------------
###4 Constructora per copia
###!----------------------------------------------
###!
#initcopy c1 = b1
#initcopy c2 = b2
#initcopy c3 = b3
###!
###!
###!----------------------------------------------
###4.1 Matricula
###!----------------------------------------------
###!
#c1 matricula
B1
##B1
#c2 matricula
B1
##B1
#c3 matricula
B1
##B1
###!
###!
###!----------------------------------------------
###4.2 Longitud
###!----------------------------------------------
###!
#c1 longitud
10
##10
#c2 longitud
20
##20
#c3 longitud
30
##30
###!
###!
###!----------------------------------------------
###4.3 Operador ==
###!----------------------------------------------
###!
#a1 == a1
true
##true
#a1 == a2
false
##false
#a1 == a3
false
##false
#a1 == c1
false
##false
#a1 == c2
false
##false
#a1 == c3
false
##false
#a2 == a1
false
##false
#a2 == a2
true
##true
#a2 == a3
false
##false
#a2 == c1
false
##false
#a2 == c2
false
##false
#a2 == c3
false
##false
#a3 == a1
false
##false
#a3 == a2
false
##false
#a3 == a3
true
##true
#a3 == c1
false
##false
#a3 == c2
false
##false
#a3 == c3
false
##false
#c1 == a1
false
##false
#c1 == a2
false
##false
#c1 == a3
false
##false
#c1 == c1
true
##true
#c1 == c2
false
##false
#c1 == c3
false
##false
#c2 == a1
false
##false
#c2 == a2
false
##false
#c2 == a3
false
##false
#c2 == c1
false
##false
#c2 == c2
true
##true
#c2 == c3
false
##false
#c3 == a1
false
##false
#c3 == a2
false
##false
#c3 == a3
false
##false
#c3 == c1
false
##false
#c3 == c2
false
##false
#c3 == c3
true
##true
###!
###!
###!----------------------------------------------
###4.4 Operador =!
###!----------------------------------------------
###!
#a1 != a1
false
##false
#a1 != a2
true
##true
#a1 != a3
true
##true
#a1 != c1
true
##true
#a1 != c2
true
##true
#a1 != c3
true
##true
#a2 != a1
true
##true
#a2 != a2
false
##false
#a2 != a3
true
##true
#a2 != c1
true
##true
#a2 != c2
true
##true
#a2 != c3
true
##true
#a3 != a1
true
##true
#a3 != a2
true
##true
#a3 != a3
false
##false
#a3 != c1
true
##true
#a3 != c2
true
##true
#a3 != c3
true
##true
#c1 != a1
true
##true
#c1 != a2
true
##true
#c1 != a3
true
##true
#c1 != c1
false
##false
#c1 != c2
true
##true
#c1 != c3
true
##true
#c2 != a2
true
##true
#c2 != a3
true
##true
#c2 != c1
true
##true
#c2 != c2
false
##false
#c2 != c3
true
##true
#c3 != a1
true
##true
#c3 != a2
true
##true
#c3 != a3
true
##true
#c3 != c1
true
##true
#c3 != c2
true
##true
#c3 != c3
false
##false
###!
###!
###!----------------------------------------------
###4.5 Operador <
###!----------------------------------------------
###!
#a1 < a1
false
##false
#a1 < a2
true
##true
#a1 < a3
true
##true
#a1 < c1
true
##true
#a1 < c2
true
##true
#a1 < c3
true
##true
#a2 < a1
false
##false
#a2 < a2
false
##false
#a2 < a3
true
##true
#a2 < c1
true
##true
#a2 < c2
true
##true
#a2 < c3
true
##true
#a3 < a1
false
##false
#a3 < a2
false
##false
#a3 < a3
false
##false
#a3 < c1
true
##true
#a3 < c2
true
##true
#a3 < c3
true
##true
#c1 < a1
false
##false
#c1 < a2
false
##false
#c1 < a3
false
##false
#c1 < c1
false
##false
#c1 < c2
true
##true
#c1 < c3
true
##true
#c2 < a1
false
##false
#c2 < a2
false
##false
#c2 < a3
false
##false
#c2 < c1
false
##false
#c2 < c2
false
##false
#c2 < c3
true
##true
#c3 < a1
false
##false
#c3 < a2
false
##false
#c3 < a3
false
##false
#c3 < c1
false
##false
#c3 < c2
false
##false
#c3 < c3
false
##false
###!
###!
###!----------------------------------------------
###4.6 Operador <=
###!----------------------------------------------
###!
#a1 <= a1
true
##true
#a1 <= a2
true
##true
#a1 <= a3
true
##true
#a1 <= c1
true
##true
#a1 <= c2
true
##true
#a1 <= c3
true
##true
#a2 <= a1
false
##false
#a2 <= a2
true
##true
#a2 <= a3
true
##true
#a2 <= c1
true
##true
#a2 <= c2
true
##true
#a2 <= c3
true
##true
#a3 <= a1
false
##false
#a3 <= a2
false
##false
#a3 <= a3
true
##true
#a3 <= c1
true
##true
#a3 <= c2
true
##true
#a3 <= c3
true
##true
#c1 <= a1
false
##false
#c1 <= a2
false
##false
#c1 <= a3
false
##false
#c1 <= c1
true
##true
#c1 <= c2
true
##true
#c1 <= c3
true
##true
#c2 <= a1
false
##false
#c2 <= a2
false
##false
#c2 <= a3
false
##false
#c2 <= c1
false
##false
#c2 <= c2
true
##true
#c2 <= c3
true
##true
#c3 <= a1
false
##false
#c3 <= a2
false
##false
#c3 <= a3
false
##false
#c3 <= c1
false
##false
#c3 <= c2
false
##false
#c3 <= c3
true
##true
###!
###!
###!----------------------------------------------
###4.7 Operador >
###!----------------------------------------------
###!
#a1 > a1
false
##false
#a1 > a2
false
##false
#a1 > a3
false
##false
#a1 > c1
false
##false
#a1 > c2
false
##false
#a1 > c3
false
##false
#a2 > a1
true
##true
#a2 > a2
false
##false
#a2 > a3
false
##false
#a2 > c1
false
##false
#a2 > c2
false
##false
#a2 > c3
false
##false
#a3 > a1
true
##true
#a3 > a2
true
##true
#a3 > a3
false
##false
#a3 > c1
false
##false
#a3 > c2
false
##false
#a3 > c3
false
##false
#c1 > a1
true
##true
#c1 > a2
true
##true
#c1 > a3
true
##true
#c1 > c1
false
##false
#c1 > c2
false
##false
#c1 > c3
false
##false
#c2 > a1
true
##true
#c2 > a2
true
##true
#c2 > a3
true
##true
#c2 > c1
true
##true
#c2 > c2
false
##false
#c2 > c3
false
##false
#c3 > a1
true
##true
#c3 > a2
true
##true
#c3 > a3
true
##true
#c3 > c1
true
##true
#c3 > c2
true
##true
#c3 > c3
false
##false
###!
###!
###!----------------------------------------------
###4.8 Operador >=
###!----------------------------------------------
###!
#a1 >= a1
true
##true
#a1 >= a2
false
##false
#a1 >= a3
false
##false
#a1 >= c1
false
##false
#a1 >= c2
false
##false
#a1 >= c3
false
##false
#a2 >= a1
true
##true
#a2 >= a2
true
##true
#a2 >= a3
false
##false
#a2 >= c1
false
##false
#a2 >= c2
false
##false
#a2 >= c3
false
##false
#a3 >= a1
true
##true
#a3 >= a2
true
##true
#a3 >= a3
true
##true
#a3 >= c1
false
##false
#a3 >= c2
false
##false
#a3 >= c3
false
##false
#c1 >= a1
true
##true
#c1 >= a2
true
##true
#c1 >= a3
true
##true
#c1 >= c1
true
##true
#c1 >= c2
false
##false
#c1 >= c3
false
##false
#c2 >= a1
true
##true
#c2 >= a2
true
##true
#c2 >= a3
true
##true
#c2 >= c1
true
##true
#c2 >= c2
true
##true
#c2 >= c3
false
##false
#c3 >= a1
true
##true
#c3 >= a2
true
##true
#c3 >= a3
true
##true
#c3 >= c1
true
##true
#c3 >= c2
true
##true
#c3 >= c3
true
##true
###!
###!
###!
###!----------------------------------------------
###5 Operador d'assignacio
###!----------------------------------------------
###!
#init z1 contenidor Z1 30
#init z2 contenidor Z1 10
#init z3 contenidor Z1 20
#init x1 contenidor X1 10
#init x2 contenidor X1 20
#init x3 contenidor X1 30
#z1 = x1
#z2 = x2
#z3 = x3
###!
###!
###!----------------------------------------------
###5.1 Matricula
###!----------------------------------------------
###!
#z1 matricula
X1
##X1
#z2 matricula
X1
##X1
#z3 matricula
X1
##X1
###!
###!
###!----------------------------------------------
###5.2 Longitud
###!----------------------------------------------
###!
#z1 longitud
10
##10
#z2 longitud
20
##20
#z3 longitud
30
##30
###!
###!
###!----------------------------------------------
###5.3 Operador ==
###!----------------------------------------------
###!
#a1 == a1
true
##true
#a1 == a2
false
##false
#a1 == a3
false
##false
#a1 == b1
false
##false
#a1 == b2
false
##false
#a1 == b3
false
##false
#a1 == z1
false
##false
#a1 == z2
false
##false
#a1 == z3
false
##false
#a2 == a1
false
##false
#a2 == a2
true
##true
#a2 == a3
false
##false
#a2 == b1
false
##false
#a2 == b2
false
##false
#a2 == b3
false
##false
#a2 == z1
false
##false
#a2 == z2
false
##false
#a2 == z3
false
##false
#a3 == a1
false
##false
#a3 == a2
false
##false
#a3 == a3
true
##true
#a3 == b1
false
##false
#a3 == b2
false
##false
#a3 == b3
false
##false
#a3 == z1
false
##false
#a3 == z2
false
##false
#a3 == z3
false
##false
#b1 == a1
false
##false
#b1 == a2
false
##false
#b1 == a3
false
##false
#b1 == b1
true
##true
#b1 == b2
false
##false
#b1 == b3
false
##false
#b1 == z1
false
##false
#b1 == z2
false
##false
#b1 == z3
false
##false
#b2 == a1
false
##false
#b2 == a2
false
##false
#b2 == a3
false
##false
#b2 == b1
false
##false
#b2 == b2
true
##true
#b2 == b3
false
##false
#b2 == z1
false
##false
#b2 == z2
false
##false
#b2 == z3
false
##false
#b3 == a1
false
##false
#b3 == a2
false
##false
#b3 == a3
false
##false
#b3 == b1
false
##false
#b3 == b2
false
##false
#b3 == b3
true
##true
#b3 == z1
false
##false
#b3 == z2
false
##false
#b3 == z3
false
##false
#z1 == a1
false
##false
#z1 == a2
false
##false
#z1 == a3
false
##false
#z1 == b1
false
##false
#z1 == b2
false
##false
#z1 == b3
false
##false
#z1 == z1
true
##true
#z1 == z2
false
##false
#z1 == z3
false
##false
#z2 == a1
false
##false
#z2 == a2
false
##false
#z2 == a3
false
##false
#z2 == b1
false
##false
#z2 == b2
false
##false
#z2 == b3
false
##false
#z2 == z1
false
##false
#z2 == z2
true
##true
#z2 == z3
false
##false
#z3 == a1
false
##false
#z3 == a2
false
##false
#z3 == a3
false
##false
#z3 == b1
false
##false
#z3 == b2
false
##false
#z3 == b3
false
##false
#z3 == z1
false
##false
#z3 == z2
false
##false
#z3 == z3
true
##true
###!
###!
###!----------------------------------------------
###5.4 Operador =!
###!----------------------------------------------
###!
#a1 != a1
false
##false
#a1 != a2
true
##true
#a1 != a3
true
##true
#a1 != b1
true
##true
#a1 != b2
true
##true
#a1 != b3
true
##true
#a1 != z1
true
##true
#a1 != z2
true
##true
#a1 != z3
true
##true
#a2 != a1
true
##true
#a2 != a2
false
##false
#a2 != a3
true
##true
#a2 != b1
true
##true
#a2 != b2
true
##true
#a2 != b3
true
##true
#a2 != z1
true
##true
#a2 != z2
true
##true
#a2 != z3
true
##true
#a3 != a1
true
##true
#a3 != a2
true
##true
#a3 != a3
false
##false
#a3 != b1
true
##true
#a3 != b2
true
##true
#a3 != b3
true
##true
#a3 != z1
true
##true
#a3 != z2
true
##true
#a3 != z3
true
##true
#b1 != a1
true
##true
#b1 != a2
true
##true
#b1 != a3
true
##true
#b1 != b1
false
##false
#b1 != b2
true
##true
#b1 != b3
true
##true
#b1 != z1
true
##true
#b1 != z2
true
##true
#b1 != z3
true
##true
#b2 != a1
true
##true
#b2 != a2
true
##true
#b2 != a3
true
##true
#b2 != b1
true
##true
#b2 != b2
false
##false
#b2 != b3
true
##true
#b2 != z1
true
##true
#b2 != z2
true
##true
#b2 != z3
true
##true
#b3 != a1
true
##true
#b3 != a2
true
##true
#b3 != a3
true
##true
#b3 != b1
true
##true
#b3 != b2
true
##true
#b3 != b3
false
##false
#b3 != z1
true
##true
#b3 != z2
true
##true
#b3 != z3
true
##true
#z1 != a1
true
##true
#z1 != a2
true
##true
#z1 != a3
true
##true
#z1 != b1
true
##true
#z1 != b2
true
##true
#z1 != b3
true
##true
#z1 != z1
false
##false
#z1 != z2
true
##true
#z1 != z3
true
##true
#z2 != a1
true
##true
#z2 != a2
true
##true
#z2 != a3
true
##true
#z2 != b1
true
##true
#z2 != b2
true
##true
#z2 != b3
true
##true
#z2 != z1
true
##true
#z2 != z2
false
##false
#z2 != z3
true
##true
#z3 != a1
true
##true
#z3 != a2
true
##true
#z3 != a3
true
##true
#z3 != b1
true
##true
#z3 != b2
true
##true
#z3 != b3
true
##true
#z3 != z1
true
##true
#z3 != z2
true
##true
#z3 != z3
false
##false
###!
###!
###!----------------------------------------------
###5.5 Operador <
###!----------------------------------------------
###!
#a1 < a1
false
##false
#a1 < a2
true
##true
#a1 < a3
true
##true
#a1 < b1
true
##true
#a1 < b2
true
##true
#a1 < b3
true
##true
#a1 < z1
true
##true
#a1 < z2
true
##true
#a1 < z3
true
##true
#a2 < a1
false
##false
#a2 < a2
false
##false
#a2 < a3
true
##true
#a2 < b1
true
##true
#a2 < b2
true
##true
#a2 < b3
true
##true
#a2 < z1
true
##true
#a2 < z2
true
##true
#a2 < z3
true
##true
#a3 < a1
false
##false
#a3 < a2
false
##false
#a3 < a3
false
##false
#a3 < b1
true
##true
#a3 < b2
true
##true
#a3 < b3
true
##true
#a3 < z1
true
##true
#a3 < z2
true
##true
#a3 < z3
true
##true
#b1 < a1
false
##false
#b1 < a2
false
##false
#b1 < a3
false
##false
#b1 < b1
false
##false
#b1 < b2
true
##true
#b1 < b3
true
##true
#b1 < z1
true
##true
#b1 < z2
true
##true
#b1 < z3
true
##true
#b2 < a1
false
##false
#b2 < a2
false
##false
#b2 < a3
false
##false
#b2 < b1
false
##false
#b2 < b2
false
##false
#b2 < b3
true
##true
#b2 < z1
true
##true
#b2 < z2
true
##true
#b2 < z3
true
##true
#b3 < a1
false
##false
#b3 < a2
false
##false
#b3 < a3
false
##false
#b3 < b1
false
##false
#b3 < b2
false
##false
#b3 < b3
false
##false
#b3 < z1
true
##true
#b3 < z2
true
##true
#b3 < z3
true
##true
#z1 < a1
false
##false
#z1 < a2
false
##false
#z1 < a3
false
##false
#z1 < b1
false
##false
#z1 < b2
false
##false
#z1 < b3
false
##false
#z1 < z1
false
##false
#z1 < z2
true
##true
#z1 < z3
true
##true
#z2 < a1
false
##false
#z2 < a2
false
##false
#z2 < a3
false
##false
#z2 < b1
false
##false
#z2 < b2
false
##false
#z2 < b3
false
##false
#z2 < z1
false
##false
#z2 < z2
false
##false
#z2 < z3
true
##true
#z3 < a1
false
##false
#z3 < a2
false
##false
#z3 < a3
false
##false
#z3 < b1
false
##false
#z3 < b2
false
##false
#z3 < b3
false
##false
#z3 < z1
false
##false
#z3 < z2
false
##false
#z3 < z3
false
##false
###!
###!
###!----------------------------------------------
###5.6 Operador <=
###!----------------------------------------------
###!
#a1 <= a1
true
##true
#a1 <= a2
true
##true
#a1 <= a3
true
##true
#a1 <= b1
true
##true
#a1 <= b2
true
##true
#a1 <= b3
true
##true
#a1 <= z1
true
##true
#a1 <= z2
true
##true
#a1 <= z3
true
##true
#a2 <= a1
false
##false
#a2 <= a2
true
##true
#a2 <= a3
true
##true
#a2 <= b1
true
##true
#a2 <= b2
true
##true
#a2 <= b3
true
##true
#a2 <= z1
true
##true
#a2 <= z2
true
##true
#a2 <= z3
true
##true
#a3 <= a1
false
##false
#a3 <= a2
false
##false
#a3 <= a3
true
##true
#a3 <= b1
true
##true
#a3 <= b2
true
##true
#a3 <= b3
true
##true
#a3 <= z1
true
##true
#a3 <= z2
true
##true
#a3 <= z3
true
##true
#b1 <= a1
false
##false
#b1 <= a2
false
##false
#b1 <= a3
false
##false
#b1 <= b1
true
##true
#b1 <= b2
true
##true
#b1 <= b3
true
##true
#b1 <= z1
true
##true
#b1 <= z2
true
##true
#b1 <= z3
true
##true
#b2 <= a1
false
##false
#b2 <= a2
false
##false
#b2 <= a3
false
##false
#b2 <= b1
false
##false
#b2 <= b2
true
##true
#b2 <= b3
true
##true
#b2 <= z1
true
##true
#b2 <= z2
true
##true
#b2 <= z3
true
##true
#b3 <= a1
false
##false
#b3 <= a2
false
##false
#b3 <= a3
false
##false
#b3 <= b1
false
##false
#b3 <= b2
false
##false
#b3 <= b3
true
##true
#b3 <= z1
true
##true
#b3 <= z2
true
##true
#b3 <= z3
true
##true
#z1 <= a1
false
##false
#z1 <= a2
false
##false
#z1 <= a3
false
##false
#z1 <= b1
false
##false
#z1 <= b2
false
##false
#z1 <= b3
false
##false
#z1 <= z1
true
##true
#z1 <= z2
true
##true
#z1 <= z3
true
##true
#z2 <= a1
false
##false
#z2 <= a2
false
##false
#z2 <= a3
false
##false
#z2 <= b1
false
##false
#z2 <= b2
false
##false
#z2 <= b3
false
##false
#z2 <= z1
false
##false
#z2 <= z2
true
##true
#z2 <= z3
true
##true
#z3 <= a1
false
##false
#z3 <= a2
false
##false
#z3 <= a3
false
##false
#z3 <= b1
false
##false
#z3 <= b2
false
##false
#z3 <= b3
false
##false
#z3 <= z1
false
##false
#z3 <= z2
false
##false
#z3 <= z3
true
##true
###!
###!
###!----------------------------------------------
###5.7 Operador >
###!----------------------------------------------
###!
#a1 > a1
false
##false
#a1 > a2
false
##false
#a1 > a3
false
##false
#a1 > b1
false
##false
#a1 > b2
false
##false
#a1 > b3
false
##false
#a1 > z1
false
##false
#a1 > z2
false
##false
#a1 > z3
false
##false
#a2 > a1
true
##true
#a2 > a2
false
##false
#a2 > a3
false
##false
#a2 > b1
false
##false
#a2 > b2
false
##false
#a2 > b3
false
##false
#a2 > z1
false
##false
#a2 > z2
false
##false
#a2 > z3
false
##false
#a3 > a1
true
##true
#a3 > a2
true
##true
#a3 > a3
false
##false
#a3 > b1
false
##false
#a3 > b2
false
##false
#a3 > b3
false
##false
#a3 > z1
false
##false
#a3 > z2
false
##false
#a3 > z3
false
##false
#b1 > a1
true
##true
#b1 > a2
true
##true
#b1 > a3
true
##true
#b1 > b1
false
##false
#b1 > b2
false
##false
#b1 > b3
false
##false
#b1 > z1
false
##false
#b1 > z2
false
##false
#b1 > z3
false
##false
#b2 > a1
true
##true
#b2 > a2
true
##true
#b2 > a3
true
##true
#b2 > b1
true
##true
#b2 > b2
false
##false
#b2 > b3
false
##false
#b2 > z1
false
##false
#b2 > z2
false
##false
#b2 > z3
false
##false
#b3 > a1
true
##true
#b3 > a2
true
##true
#b3 > a3
true
##true
#b3 > b1
true
##true
#b3 > b2
true
##true
#b3 > b3
false
##false
#b3 > z1
false
##false
#b3 > z2
false
##false
#b3 > z3
false
##false
#z1 > a1
true
##true
#z1 > a2
true
##true
#z1 > a3
true
##true
#z1 > b1
true
##true
#z1 > b2
true
##true
#z1 > b3
true
##true
#z1 > z1
false
##false
#z1 > z2
false
##false
#z1 > z3
false
##false
#z2 > a1
true
##true
#z2 > a2
true
##true
#z2 > a3
true
##true
#z2 > b1
true
##true
#z2 > b2
true
##true
#z2 > b3
true
##true
#z2 > z1
true
##true
#z2 > z2
false
##false
#z2 > z3
false
##false
#z3 > a1
true
##true
#z3 > a2
true
##true
#z3 > a3
true
##true
#z3 > b1
true
##true
#z3 > b2
true
##true
#z3 > b3
true
##true
#z3 > z1
true
##true
#z3 > z2
true
##true
#z3 > z3
false
##false
###!
###!
###!----------------------------------------------
###5.8 Operador >=
###!----------------------------------------------
###!
#a1 >= a1
true
##true
#a1 >= a2
false
##false
#a1 >= a3
false
##false
#a1 >= b1
false
##false
#a1 >= b2
false
##false
#a1 >= b3
false
##false
#a1 >= z1
false
##false
#a1 >= z2
false
##false
#a1 >= z3
false
##false
#a2 >= a1
true
##true
#a2 >= a2
true
##true
#a2 >= a3
false
##false
#a2 >= b1
false
##false
#a2 >= b2
false
##false
#a2 >= b3
false
##false
#a2 >= z1
false
##false
#a2 >= z2
false
##false
#a2 >= z3
false
##false
#a3 >= a1
true
##true
#a3 >= a2
true
##true
#a3 >= a3
true
##true
#a3 >= b1
false
##false
#a3 >= b2
false
##false
#a3 >= b3
false
##false
#a3 >= z1
false
##false
#a3 >= z2
false
##false
#a3 >= z3
false
##false
#b1 >= a1
true
##true
#b1 >= a2
true
##true
#b1 >= a3
true
##true
#b1 >= b1
true
##true
#b1 >= b2
false
##false
#b1 >= b3
false
##false
#b1 >= z1
false
##false
#b1 >= z2
false
##false
#b1 >= z3
false
##false
#b2 >= a1
true
##true
#b2 >= a2
true
##true
#b2 >= a3
true
##true
#b2 >= b1
true
##true
#b2 >= b2
true
##true
#b2 >= b3
false
##false
#b2 >= z1
false
##false
#b2 >= z2
false
##false
#b2 >= z3
false
##false
#b3 >= a1
true
##true
#b3 >= a2
true
##true
#b3 >= a3
true
##true
#b3 >= b1
true
##true
#b3 >= b2
true
##true
#b3 >= b3
true
##true
#b3 >= z1
false
##false
#b3 >= z2
false
##false
#b3 >= z3
false
##false
#z1 >= a1
true
##true
#z1 >= a2
true
##true
#z1 >= a3
true
##true
#z1 >= b1
true
##true
#z1 >= b2
true
##true
#z1 >= b3
true
##true
#z1 >= z1
true
##true
#z1 >= z2
false
##false
#z1 >= z3
false
##false
#z2 >= a1
true
##true
#z2 >= a2
true
##true
#z2 >= a3
true
##true
#z2 >= b1
true
##true
#z2 >= b2
true
##true
#z2 >= b3
true
##true
#z2 >= z1
true
##true
#z2 >= z2
true
##true
#z2 >= z3
false
##false
#z3 >= a1
true
##true
#z3 >= a2
true
##true
#z3 >= a3
true
##true
#z3 >= b1
true
##true
#z3 >= b2
true
##true
#z3 >= b3
true
##true
#z3 >= z1
true
##true
#z3 >= z2
true
##true
#z3 >= z3
true
##true
###!
###!
###!
###!----------------------------------------------
###6 Destructora
###!----------------------------------------------
###!
#a1 destroy
#a2 destroy
#a3 destroy
#b1 destroy
#b2 destroy
#b3 destroy
#c1 destroy
#c2 destroy
#c3 destroy
#x1 destroy
#x2 destroy
#x3 destroy
#z1 destroy
#z2 destroy
#z3 destroy
###!
