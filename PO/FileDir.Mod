MODULE FileDir;
  PROCEDURE rename*(CONST oldName, newName: ARRAY OF CHAR): INTEGER IS "=rename";
  PROCEDURE remove*(CONST fileName: ARRAY OF CHAR): INTEGER IS "=remove";
END FileDir.
