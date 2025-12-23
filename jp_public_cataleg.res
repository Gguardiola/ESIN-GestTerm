###!----------------------------------------------
###!
###! JOCS DE PROVES DE LA CLASSE CATALEG
###!
###!----------------------------------------------
###!
###!------------------------------------------------------------------
###1 Cataleg buit
###!------------------------------------------------------------------
###!
#init a1 cataleg<int> 0
###!
#val KuCha12
Error::cataleg:31:Clau inexistent.
##Error::cataleg:31:Clau inexistent.
###!
#existeix KuCha12
false
##false
#quants
0
##0
###!
#elimina KuCha12
Error::cataleg:31:Clau inexistent.
##Error::cataleg:31:Clau inexistent.
#existeix KuCha12
false
##false
#quants
0
##0
###!
#a1 destroy
###!
###!
###!
###!------------------------------------------------------------------
###2 Una clau
###!------------------------------------------------------------------
###!
###!------------------------------
###2.1 Clau NO present al cataleg
###!------------------------------
###!
#init a2 cataleg<int> 1
###!
#assig KuCha12 12
###!
#val KuCha12
12
##12
#val KuCha13
Error::cataleg:31:Clau inexistent.
##Error::cataleg:31:Clau inexistent.
###!
#existeix KuCha12
true
##true
#existeix KuCha13
false
##false
#quants
1
##1
###!
###!
###!------------------------------
###2.2 Clau present al cataleg
###!------------------------------
###!
#assig KuCha12 12
###!
#val KuCha12
12
##12
#val KuCha13
Error::cataleg:31:Clau inexistent.
##Error::cataleg:31:Clau inexistent.
###!
#existeix KuCha12
true
##true
#existeix KuCha13
false
##false
#quants
1
##1
###!
#elimina KuCha12
#existeix KuCha12
false
##false
#quants
0
##0
###!
#a2 destroy
###!
###!
###!
###!------------------------------------------------------------------
###3 Dues claus
###!------------------------------------------------------------------
###!
###!------------------------------
###3.1 Clau assignada al principi
###!------------------------------
###!
#init a31 cataleg<int> 2
###!
#assig KuCha1 1
#assig HuCha2 2
###!
#val KuCha1
1
##1
#val HuCha2
2
##2
#val HuCha13
Error::cataleg:31:Clau inexistent.
##Error::cataleg:31:Clau inexistent.
###!
#existeix KuCha1
true
##true
#existeix HuCha2
true
##true
#existeix HuCha13
false
##false
#quants
2
##2
###!
#elimina KuCha1
#elimina HuCha2
#existeix KuCha1
false
##false
#existeix HuCha2
false
##false
#existeix HuCha13
false
##false
#quants
0
##0
###!
#a31 destroy
###!
###!
###!------------------------------
###3.2 Clau assignada al final
###!------------------------------
###!
#init a32 cataleg<int> 2
###!
#assig HuCha1 1
#assig KuCha2 2
###!
#val KuCha2
2
##2
#val HuCha1
1
##1
#val HuCha13
Error::cataleg:31:Clau inexistent.
##Error::cataleg:31:Clau inexistent.
###!
#existeix HuCha1
true
##true
#existeix KuCha2
true
##true
#existeix HuCha13
false
##false
###!
#quants
2
##2
###!
#a32 destroy
###!
###!
###!
###!------------------------------------------------------------------
###4 Tres claus
###!------------------------------------------------------------------
###!
###!------------------------------
###4.1 Clau assignada al principi
###!------------------------------
###!
#init a41 cataleg<int> 3
###!
#assig HuCha1 1
#assig KuCha2 2
#assig AuCha3 3
###!
#val KuCha2
2
##2
#val HuCha1
1
##1
#val AuCha3
3
##3
#val HuCha13
Error::cataleg:31:Clau inexistent.
##Error::cataleg:31:Clau inexistent.
###!
#existeix KuCha2
true
##true
#existeix HuCha1
true
##true
#existeix AuCha3
true
##true
#existeix HuCha13
false
##false
#quants
3
##3
###!
#elimina KuCha2
#elimina HuCha1
#elimina AuCha3
#existeix KuCha2
false
##false
#existeix HuCha1
false
##false
#existeix AuCha3
false
##false
#existeix HuCha13
false
##false
#quants
0
##0
###!
#a41 destroy
###!
###!
###!------------------------------
###4.2 Clau assignada al mig
###!------------------------------
###!
#init a42 cataleg<int> 3
###!
#assig KuCha2 2
#assig HuCha1 1
#assig IuCha3 3
###!
#val KuCha2
2
##2
#val HuCha1
1
##1
#val IuCha3
3
##3
#val HuCha13
Error::cataleg:31:Clau inexistent.
##Error::cataleg:31:Clau inexistent.
###!
#existeix KuCha2
true
##true
#existeix HuCha1
true
##true
#existeix IuCha3
true
##true
#existeix HuCha13
false
##false
###!
#quants
3
##3
###!
#a42 destroy
###!
###!
###!------------------------------
###4.3 Clau assignada al final
###!------------------------------
###!
#init a43 cataleg<int> 3
###!
#assig HuCha1 1
#assig KuCha2 2
#assig ZuCha3 3
###!
#val KuCha2
2
##2
#val ZuCha3
3
##3
#val HuCha1
1
##1
#val HuCha13
Error::cataleg:31:Clau inexistent.
##Error::cataleg:31:Clau inexistent.
###!
#existeix KuCha2
true
##true
#existeix ZuCha3
true
##true
#existeix HuCha1
true
##true
#existeix HuCha13
false
##false
###!
#quants
3
##3
###!
#a43 destroy
###!
###!
###!
