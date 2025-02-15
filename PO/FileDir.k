!! (SYMFILE #FileDir 0x00030300 #FileDir.%main 1 #FileDir.Mod)
!! (DEF !1 (FLEX CHAR))
!! (PROCEDURE #rename* 2 #FileDir.rename !2 (PROC 4 INTEGER
!!     (CPARAM #oldName 12 =1)
!!     (CPARAM #newName 20 =1)))
!! (DEF !3 (FLEX CHAR))
!! (PROCEDURE #remove* 3 #FileDir.remove !4 (PROC 2 INTEGER
!!     (CPARAM #fileName 12 =3)))
!! (CHKSUM 0x1c610438)
!! 
MODULE FileDir 0x1c610438 4
ENDHDR

PRIMDEF FileDir.rename =rename IXX

PRIMDEF FileDir.remove =remove IX

! End of file
