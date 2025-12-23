###!----------------------------------------------
###!
###! JOC DE PROVES DE LA CLASSE UBICACIO
###!
###!----------------------------------------------
###!
###!
###!------------------------------------------------------------------
###1 Errors
###!------------------------------------------------------------------
###!
###!------------------------------------------------------------------
###1.1 Error 10: Ubicacio incorrecta
###!------------------------------------------------------------------
###!
#init u ubicacio -2 0 0
Error::ubicacio:10:Ubicacio incorrecta.
##Error::ubicacio:10:Ubicacio incorrecta.
#init u ubicacio -2 -1 -1
Error::ubicacio:10:Ubicacio incorrecta.
##Error::ubicacio:10:Ubicacio incorrecta.
#init u ubicacio -1 -2 -1
Error::ubicacio:10:Ubicacio incorrecta.
##Error::ubicacio:10:Ubicacio incorrecta.
#init u ubicacio -1 -1 -2
Error::ubicacio:10:Ubicacio incorrecta.
##Error::ubicacio:10:Ubicacio incorrecta.
#init u ubicacio -1 10 10
Error::ubicacio:10:Ubicacio incorrecta.
##Error::ubicacio:10:Ubicacio incorrecta.
###!
###!
###!
###!------------------------------------------------------------------
###2 Mètodes consultors
###!------------------------------------------------------------------
###!
#init u000 ubicacio 0 0 0
#init u007 ubicacio 0 0 7
#init u064 ubicacio 0 6 4
#init u_100 ubicacio -1 0 0
#init u_1_1_1 ubicacio -1 -1 -1
###!
###!
###!------------------------------------------------------------------
###2.1 Filera
###!------------------------------------------------------------------
###!
#u000 filera
0
##0
#u007 filera
0
##0
#u064 filera
0
##0
#u_100 filera
-1
##-1
#u_1_1_1 filera
-1
##-1
###!
###!
###!------------------------------------------------------------------
###2.2 Placa
###!------------------------------------------------------------------
###!
#u000 placa
0
##0
#u007 placa
0
##0
#u064 placa
6
##6
#u_100 placa
0
##0
#u_1_1_1 placa
-1
##-1
###!
###!
###!------------------------------------------------------------------
###2.3 Pis
###!------------------------------------------------------------------
###!
#u000 pis
0
##0
#u007 pis
7
##7
#u064 pis
4
##4
#u_100 pis
0
##0
#u_1_1_1 pis
-1
##-1
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
#u000 == u000
true
##true
#u000 == u007
false
##false
#u000 == u064
false
##false
#u000 == u_100
false
##false
#u000 == u_1_1_1
false
##false
#u007 == u000
false
##false
#u007 == u007
true
##true
#u007 == u064
false
##false
#u007 == u_100
false
##false
#u007 == u_1_1_1
false
##false
#u064 == u000
false
##false
#u064 == u007
false
##false
#u064 == u064
true
##true
#u064 == u_100
false
##false
#u064 == u_1_1_1
false
##false
#u_100 == u000
false
##false
#u_100 == u007
false
##false
#u_100 == u064
false
##false
#u_100 == u_100
true
##true
#u_100 == u_1_1_1
false
##false
#u_1_1_1 == u000
false
##false
#u_1_1_1 == u007
false
##false
#u_1_1_1 == u064
false
##false
#u_1_1_1 == u_100
false
##false
#u_1_1_1 == u_1_1_1
true
##true
###!
###!
###!----------------------------------------------
###3.2 Operador !=
###!----------------------------------------------
###!
#u000 != u000
false
##false
#u000 != u007
true
##true
#u000 != u064
true
##true
#u000 != u_100
true
##true
#u000 != u_1_1_1
true
##true
#u007 != u000
true
##true
#u007 != u007
false
##false
#u007 != u064
true
##true
#u007 != u_100
true
##true
#u007 != u_1_1_1
true
##true
#u064 != u000
true
##true
#u064 != u007
true
##true
#u064 != u064
false
##false
#u064 != u_100
true
##true
#u064 != u_1_1_1
true
##true
#u_100 != u000
true
##true
#u_100 != u007
true
##true
#u_100 != u064
true
##true
#u_100 != u_100
false
##false
#u_100 != u_1_1_1
true
##true
#u_1_1_1 != u000
true
##true
#u_1_1_1 != u007
true
##true
#u_1_1_1 != u064
true
##true
#u_1_1_1 != u_100
true
##true
#u_1_1_1 != u_1_1_1
false
##false
###!
###!
###!----------------------------------------------
###3.3 Operador <
###!----------------------------------------------
###!
#u000 < u000
false
##false
#u000 < u007
true
##true
#u000 < u064
true
##true
#u000 < u_100
false
##false
#u000 < u_1_1_1
false
##false
#u007 < u000
false
##false
#u007 < u007
false
##false
#u007 < u064
true
##true
#u007 < u_100
false
##false
#u007 < u_1_1_1
false
##false
#u064 < u000
false
##false
#u064 < u007
false
##false
#u064 < u064
false
##false
#u064 < u_100
false
##false
#u064 < u_1_1_1
false
##false
#u_100 < u000
true
##true
#u_100 < u007
true
##true
#u_100 < u064
true
##true
#u_100 < u_100
false
##false
#u_100 < u_1_1_1
false
##false
#u_1_1_1 < u000
true
##true
#u_1_1_1 < u007
true
##true
#u_1_1_1 < u064
true
##true
#u_1_1_1 < u_100
true
##true
#u_1_1_1 < u_1_1_1
false
##false
###!
###!
###!----------------------------------------------
###3.4 Operador <=
###!----------------------------------------------
###!
#u000 <= u000
true
##true
#u000 <= u007
true
##true
#u000 <= u064
true
##true
#u000 <= u_100
false
##false
#u000 <= u_1_1_1
false
##false
#u007 <= u000
false
##false
#u007 <= u007
true
##true
#u007 <= u064
true
##true
#u007 <= u_100
false
##false
#u007 <= u_1_1_1
false
##false
#u064 <= u000
false
##false
#u064 <= u007
false
##false
#u064 <= u064
true
##true
#u064 <= u_100
false
##false
#u064 <= u_1_1_1
false
##false
#u_100 <= u000
true
##true
#u_100 <= u007
true
##true
#u_100 <= u064
true
##true
#u_100 <= u_100
true
##true
#u_100 <= u_1_1_1
false
##false
#u_1_1_1 <= u000
true
##true
#u_1_1_1 <= u007
true
##true
#u_1_1_1 <= u064
true
##true
#u_1_1_1 <= u_100
true
##true
#u_1_1_1 <= u_1_1_1
true
##true
###!
###!
###!----------------------------------------------
###3.5 Operador >
###!----------------------------------------------
###!
#u000 > u000
false
##false
#u000 > u007
false
##false
#u000 > u064
false
##false
#u000 > u_100
true
##true
#u000 > u_1_1_1
true
##true
#u007 > u000
true
##true
#u007 > u007
false
##false
#u007 > u064
false
##false
#u007 > u_100
true
##true
#u007 > u_1_1_1
true
##true
#u064 > u000
true
##true
#u064 > u007
true
##true
#u064 > u064
false
##false
#u064 > u_100
true
##true
#u064 > u_1_1_1
true
##true
#u_100 > u000
false
##false
#u_100 > u007
false
##false
#u_100 > u064
false
##false
#u_100 > u_100
false
##false
#u_100 > u_1_1_1
true
##true
#u_1_1_1 > u000
false
##false
#u_1_1_1 > u007
false
##false
#u_1_1_1 > u064
false
##false
#u_1_1_1 > u_100
false
##false
#u_1_1_1 > u_1_1_1
false
##false
###!
###!
###!----------------------------------------------
###3.6 Operador >=
###!----------------------------------------------
###!
#u000 >= u000
true
##true
#u000 >= u007
false
##false
#u000 >= u064
false
##false
#u000 >= u_100
true
##true
#u000 >= u_1_1_1
true
##true
#u007 >= u000
true
##true
#u007 >= u007
true
##true
#u007 >= u064
false
##false
#u007 >= u_100
true
##true
#u007 >= u_1_1_1
true
##true
#u064 >= u000
true
##true
#u064 >= u007
true
##true
#u064 >= u064
true
##true
#u064 >= u_100
true
##true
#u064 >= u_1_1_1
true
##true
#u_100 >= u000
false
##false
#u_100 >= u007
false
##false
#u_100 >= u064
false
##false
#u_100 >= u_100
true
##true
#u_100 >= u_1_1_1
true
##true
#u_1_1_1 >= u000
false
##false
#u_1_1_1 >= u007
false
##false
#u_1_1_1 >= u064
false
##false
#u_1_1_1 >= u_100
false
##false
#u_1_1_1 >= u_1_1_1
true
##true
###!
###!
###!
###!----------------------------------------------
###4 Constructora per copia
###!----------------------------------------------
###!
#initcopy c000 = u000
#initcopy c007 = u007
#initcopy c064 = u064
#initcopy c_100 = u_100
#initcopy c_1_1_1 = u_1_1_1
###!
###!
###!------------------------------------------------------------------
###4.1 Filera
###!------------------------------------------------------------------
###!
#c000 filera
0
##0
#c007 filera
0
##0
#c064 filera
0
##0
#c_100 filera
-1
##-1
#c_1_1_1 filera
-1
##-1
###!
###!
###!------------------------------------------------------------------
###4.2 Placa
###!------------------------------------------------------------------
###!
#c000 placa
0
##0
#c007 placa
0
##0
#c064 placa
6
##6
#c_100 placa
0
##0
#c_1_1_1 placa
-1
##-1
###!
###!
###!------------------------------------------------------------------
###4.3 Pis
###!------------------------------------------------------------------
###!
#c000 pis
0
##0
#c007 pis
7
##7
#c064 pis
4
##4
#c_100 pis
0
##0
#c_1_1_1 pis
-1
##-1
###!
###!
###!----------------------------------------------
###4.4 Operador ==
###!----------------------------------------------
###!
#c000 == c000
true
##true
#c000 == c007
false
##false
#c000 == c064
false
##false
#c000 == c_100
false
##false
#c000 == c_1_1_1
false
##false
#c007 == c000
false
##false
#c007 == c007
true
##true
#c007 == c064
false
##false
#c007 == c_100
false
##false
#c007 == c_1_1_1
false
##false
#c064 == c000
false
##false
#c064 == c007
false
##false
#c064 == c064
true
##true
#c064 == c_100
false
##false
#c064 == c_1_1_1
false
##false
#c_100 == c000
false
##false
#c_100 == c007
false
##false
#c_100 == c064
false
##false
#c_100 == c_100
true
##true
#c_100 == c_1_1_1
false
##false
#c_1_1_1 == c000
false
##false
#c_1_1_1 == c007
false
##false
#c_1_1_1 == c064
false
##false
#c_1_1_1 == c_100
false
##false
#c_1_1_1 == c_1_1_1
true
##true
###!
###!
###!----------------------------------------------
###4.5 Operador !=
###!----------------------------------------------
###!
#c000 != c000
false
##false
#c000 != c007
true
##true
#c000 != c064
true
##true
#c000 != c_100
true
##true
#c000 != c_1_1_1
true
##true
#c007 != c000
true
##true
#c007 != c007
false
##false
#c007 != c064
true
##true
#c007 != c_100
true
##true
#c007 != c_1_1_1
true
##true
#c064 != c000
true
##true
#c064 != c007
true
##true
#c064 != c064
false
##false
#c064 != c_100
true
##true
#c064 != c_1_1_1
true
##true
#c_100 != c000
true
##true
#c_100 != c007
true
##true
#c_100 != c064
true
##true
#c_100 != c_100
false
##false
#c_100 != c_1_1_1
true
##true
#c_1_1_1 != c000
true
##true
#c_1_1_1 != c007
true
##true
#c_1_1_1 != c064
true
##true
#c_1_1_1 != c_100
true
##true
#c_1_1_1 != c_1_1_1
false
##false
###!
###!
###!----------------------------------------------
###4.6 Operador <
###!----------------------------------------------
###!
#c000 < c000
false
##false
#c000 < c007
true
##true
#c000 < c064
true
##true
#c000 < c_100
false
##false
#c000 < c_1_1_1
false
##false
#c007 < c000
false
##false
#c007 < c007
false
##false
#c007 < c064
true
##true
#c007 < c_100
false
##false
#c007 < c_1_1_1
false
##false
#c064 < c000
false
##false
#c064 < c007
false
##false
#c064 < c064
false
##false
#c064 < c_100
false
##false
#c064 < c_1_1_1
false
##false
#c_100 < c000
true
##true
#c_100 < c007
true
##true
#c_100 < c064
true
##true
#c_100 < c_100
false
##false
#c_100 < c_1_1_1
false
##false
#c_1_1_1 < c000
true
##true
#c_1_1_1 < c007
true
##true
#c_1_1_1 < c064
true
##true
#c_1_1_1 < c_100
true
##true
#c_1_1_1 < c_1_1_1
false
##false
###!
###!
###!----------------------------------------------
###4.7 Operador <=
###!----------------------------------------------
###!
#c000 <= c000
true
##true
#c000 <= c007
true
##true
#c000 <= c064
true
##true
#c000 <= c_100
false
##false
#c000 <= c_1_1_1
false
##false
#c007 <= c000
false
##false
#c007 <= c007
true
##true
#c007 <= c064
true
##true
#c007 <= c_100
false
##false
#c007 <= c_1_1_1
false
##false
#c064 <= c000
false
##false
#c064 <= c007
false
##false
#c064 <= c064
true
##true
#c064 <= c_100
false
##false
#c064 <= c_1_1_1
false
##false
#c_100 <= c000
true
##true
#c_100 <= c007
true
##true
#c_100 <= c064
true
##true
#c_100 <= c_100
true
##true
#c_100 <= c_1_1_1
false
##false
#c_1_1_1 <= c000
true
##true
#c_1_1_1 <= c007
true
##true
#c_1_1_1 <= c064
true
##true
#c_1_1_1 <= c_100
true
##true
#c_1_1_1 <= c_1_1_1
true
##true
###!
###!
###!----------------------------------------------
###4.8 Operador >
###!----------------------------------------------
###!
#c000 > c000
false
##false
#c000 > c007
false
##false
#c000 > c064
false
##false
#c000 > c_100
true
##true
#c000 > c_1_1_1
true
##true
#c007 > c000
true
##true
#c007 > c007
false
##false
#c007 > c064
false
##false
#c007 > c_100
true
##true
#c007 > c_1_1_1
true
##true
#c064 > c000
true
##true
#c064 > c007
true
##true
#c064 > c064
false
##false
#c064 > c_100
true
##true
#c064 > c_1_1_1
true
##true
#c_100 > c000
false
##false
#c_100 > c007
false
##false
#c_100 > c064
false
##false
#c_100 > c_100
false
##false
#c_100 > c_1_1_1
true
##true
#c_1_1_1 > c000
false
##false
#c_1_1_1 > c007
false
##false
#c_1_1_1 > c064
false
##false
#c_1_1_1 > c_100
false
##false
#c_1_1_1 > c_1_1_1
false
##false
###!
###!
###!----------------------------------------------
###4.9 Operador >=
###!----------------------------------------------
###!
#c000 >= c000
true
##true
#c000 >= c007
false
##false
#c000 >= c064
false
##false
#c000 >= c_100
true
##true
#c000 >= c_1_1_1
true
##true
#c007 >= c000
true
##true
#c007 >= c007
true
##true
#c007 >= c064
false
##false
#c007 >= c_100
true
##true
#c007 >= c_1_1_1
true
##true
#c064 >= c000
true
##true
#c064 >= c007
true
##true
#c064 >= c064
true
##true
#c064 >= c_100
true
##true
#c064 >= c_1_1_1
true
##true
#c_100 >= c000
false
##false
#c_100 >= c007
false
##false
#c_100 >= c064
false
##false
#c_100 >= c_100
true
##true
#c_100 >= c_1_1_1
true
##true
#c_1_1_1 >= c000
false
##false
#c_1_1_1 >= c007
false
##false
#c_1_1_1 >= c064
false
##false
#c_1_1_1 >= c_100
false
##false
#c_1_1_1 >= c_1_1_1
true
##true
###!
###!
###!
###!----------------------------------------------
###5 Operador d'assignacio
###!----------------------------------------------
###!
#init x000 ubicacio 1 2 3
#init x007 ubicacio 4 5 6
#init x064 ubicacio 6 7 8
#init x_100 ubicacio 9 10 11
#init x_1_1_1 ubicacio 12 13 14
###!
###!
###!------------------------------------------------------------------
###5.1 Filera
###!------------------------------------------------------------------
###!
#x000 filera
1
##1
#x007 filera
4
##4
#x064 filera
6
##6
#x_100 filera
9
##9
#x_1_1_1 filera
12
##12
###!
###!
###!------------------------------------------------------------------
###5.2 Placa
###!------------------------------------------------------------------
###!
#x000 placa
2
##2
#x007 placa
5
##5
#x064 placa
7
##7
#x_100 placa
10
##10
#x_1_1_1 placa
13
##13
###!
###!
###!------------------------------------------------------------------
###5.3 Pis
###!------------------------------------------------------------------
###!
#x000 pis
3
##3
#x007 pis
6
##6
#x064 pis
8
##8
#x_100 pis
11
##11
#x_1_1_1 pis
14
##14
###!
###!
###!------------------------------------------------------------------
###5.4 Assignacio
###!------------------------------------------------------------------
###!
#x000 = c000
#x007 = c007
#x064 = c064
#x_100 = c_100
#x_1_1_1 = c_1_1_1
###!
###!
###!----------------------------------------------
###5.5 Operador ==
###!----------------------------------------------
###!
#x000 == x000
true
##true
#x000 == x007
false
##false
#x000 == x064
false
##false
#x000 == x_100
false
##false
#x000 == x_1_1_1
false
##false
#x007 == x000
false
##false
#x007 == x007
true
##true
#x007 == x064
false
##false
#x007 == x_100
false
##false
#x007 == x_1_1_1
false
##false
#x064 == x000
false
##false
#x064 == x007
false
##false
#x064 == x064
true
##true
#x064 == x_100
false
##false
#x064 == x_1_1_1
false
##false
#x_100 == x000
false
##false
#x_100 == x007
false
##false
#x_100 == x064
false
##false
#x_100 == x_100
true
##true
#x_100 == x_1_1_1
false
##false
#x_1_1_1 == x000
false
##false
#x_1_1_1 == x007
false
##false
#x_1_1_1 == x064
false
##false
#x_1_1_1 == x_100
false
##false
#x_1_1_1 == x_1_1_1
true
##true
###!
###!
###!----------------------------------------------
###5.6 Operador !=
###!----------------------------------------------
###!
#x000 != x000
false
##false
#x000 != x007
true
##true
#x000 != x064
true
##true
#x000 != x_100
true
##true
#x000 != x_1_1_1
true
##true
#x007 != x000
true
##true
#x007 != x007
false
##false
#x007 != x064
true
##true
#x007 != x_100
true
##true
#x007 != x_1_1_1
true
##true
#x064 != x000
true
##true
#x064 != x007
true
##true
#x064 != x064
false
##false
#x064 != x_100
true
##true
#x064 != x_1_1_1
true
##true
#x_100 != x000
true
##true
#x_100 != x007
true
##true
#x_100 != x064
true
##true
#x_100 != x_100
false
##false
#x_100 != x_1_1_1
true
##true
#x_1_1_1 != x000
true
##true
#x_1_1_1 != x007
true
##true
#x_1_1_1 != x064
true
##true
#x_1_1_1 != x_100
true
##true
#x_1_1_1 != x_1_1_1
false
##false
###!
###!
###!----------------------------------------------
###5.7 Operador <
###!----------------------------------------------
###!
#x000 < x000
false
##false
#x000 < x007
true
##true
#x000 < x064
true
##true
#x000 < x_100
false
##false
#x000 < x_1_1_1
false
##false
#x007 < x000
false
##false
#x007 < x007
false
##false
#x007 < x064
true
##true
#x007 < x_100
false
##false
#x007 < x_1_1_1
false
##false
#x064 < x000
false
##false
#x064 < x007
false
##false
#x064 < x064
false
##false
#x064 < x_100
false
##false
#x064 < x_1_1_1
false
##false
#x_100 < x000
true
##true
#x_100 < x007
true
##true
#x_100 < x064
true
##true
#x_100 < x_100
false
##false
#x_100 < x_1_1_1
false
##false
#x_1_1_1 < x000
true
##true
#x_1_1_1 < x007
true
##true
#x_1_1_1 < x064
true
##true
#x_1_1_1 < x_100
true
##true
#x_1_1_1 < x_1_1_1
false
##false
###!
###!
###!----------------------------------------------
###5.8 Operador <=
###!----------------------------------------------
###!
#x000 <= x000
true
##true
#x000 <= x007
true
##true
#x000 <= x064
true
##true
#x000 <= x_100
false
##false
#x000 <= x_1_1_1
false
##false
#x007 <= x000
false
##false
#x007 <= x007
true
##true
#x007 <= x064
true
##true
#x007 <= x_100
false
##false
#x007 <= x_1_1_1
false
##false
#x064 <= x000
false
##false
#x064 <= x007
false
##false
#x064 <= x064
true
##true
#x064 <= x_100
false
##false
#x064 <= x_1_1_1
false
##false
#x_100 <= x000
true
##true
#x_100 <= x007
true
##true
#x_100 <= x064
true
##true
#x_100 <= x_100
true
##true
#x_100 <= x_1_1_1
false
##false
#x_1_1_1 <= x000
true
##true
#x_1_1_1 <= x007
true
##true
#x_1_1_1 <= x064
true
##true
#x_1_1_1 <= x_100
true
##true
#x_1_1_1 <= x_1_1_1
true
##true
###!
###!
###!----------------------------------------------
###5.9 Operador >
###!----------------------------------------------
###!
#x000 > x000
false
##false
#x000 > x007
false
##false
#x000 > x064
false
##false
#x000 > x_100
true
##true
#x000 > x_1_1_1
true
##true
#x007 > x000
true
##true
#x007 > x007
false
##false
#x007 > x064
false
##false
#x007 > x_100
true
##true
#x007 > x_1_1_1
true
##true
#x064 > x000
true
##true
#x064 > x007
true
##true
#x064 > x064
false
##false
#x064 > x_100
true
##true
#x064 > x_1_1_1
true
##true
#x_100 > x000
false
##false
#x_100 > x007
false
##false
#x_100 > x064
false
##false
#x_100 > x_100
false
##false
#x_100 > x_1_1_1
true
##true
#x_1_1_1 > x000
false
##false
#x_1_1_1 > x007
false
##false
#x_1_1_1 > x064
false
##false
#x_1_1_1 > x_100
false
##false
#x_1_1_1 > x_1_1_1
false
##false
###!
###!
###!----------------------------------------------
###5.10 Operador >=
###!----------------------------------------------
###!
#x000 >= x000
true
##true
#x000 >= x007
false
##false
#x000 >= x064
false
##false
#x000 >= x_100
true
##true
#x000 >= x_1_1_1
true
##true
#x007 >= x000
true
##true
#x007 >= x007
true
##true
#x007 >= x064
false
##false
#x007 >= x_100
true
##true
#x007 >= x_1_1_1
true
##true
#x064 >= x000
true
##true
#x064 >= x007
true
##true
#x064 >= x064
true
##true
#x064 >= x_100
true
##true
#x064 >= x_1_1_1
true
##true
#x_100 >= x000
false
##false
#x_100 >= x007
false
##false
#x_100 >= x064
false
##false
#x_100 >= x_100
true
##true
#x_100 >= x_1_1_1
true
##true
#x_1_1_1 >= x000
false
##false
#x_1_1_1 >= x007
false
##false
#x_1_1_1 >= x064
false
##false
#x_1_1_1 >= x_100
false
##false
#x_1_1_1 >= x_1_1_1
true
##true
###!
###!
###!
###!----------------------------------------------
###6 Destructora
###!----------------------------------------------
###!
#u000 destroy
#u007 destroy
#u064 destroy
#u_100 destroy
#u_1_1_1 destroy
#c000 destroy
#c007 destroy
#c064 destroy
#c_100 destroy
#c_1_1_1 destroy
#x000 destroy
#x007 destroy
#x064 destroy
#x_100 destroy
#x_1_1_1 destroy
