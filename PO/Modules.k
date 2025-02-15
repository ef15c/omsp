!! (SYMFILE #Modules 0x00030300 #Modules.%main 1 #Modules.Mod)
!! (GLOBAL #AllocPtr- #Modules.AllocPtr INTEGER)
!! (GLOBAL #flash #Modules.flash !1 (ARRAY 65536 BYTE))
!! (CHKSUM 0x2949f19d)
!! 
MODULE Modules 0x2949f19d 8
ENDHDR

PROC Modules.%main 0 2 0
! BEGIN AllocPtr := SYSTEM.ADR(flash)
LINE 7
GLOBAL Modules.flash
STGW Modules.AllocPtr
RETURN
END

! Global variables
GLOVAR Modules.AllocPtr 4
GLOVAR Modules.flash 65536

! End of file
