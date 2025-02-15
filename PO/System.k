!! (SYMFILE #System 0x00030300 #System.%main 1 #System.Mod)
!! (CHKSUM 0x73e01007)
!! 
MODULE System 0x73e01007 5
IMPORT Oberon 0x7fd79012
IMPORT TextOutput 0x525ffdd0
ENDHDR

PROC System.%main 0 3 0
! BEGIN Oberon.OpenLog(TextOutput.Text(""));
LINE 4
CONST 1
GLOBAL System.%1
GLOBAL TextOutput.Text
CALLW 2
GLOBAL Oberon.OpenLog
CALL 1
RETURN
END

! String ""
DEFINE System.%1
STRING 00

! End of file
