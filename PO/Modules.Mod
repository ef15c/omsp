MODULE Modules;
  IMPORT SYSTEM;

  VAR AllocPtr*: INTEGER;
    flash: ARRAY 10000H OF BYTE;
  
BEGIN AllocPtr := SYSTEM.ADR(flash)
END Modules.
