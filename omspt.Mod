MODULE omspt;
  IMPORT Texts, Oberon, Args, Strings, OMSPTool;

  VAR P: Texts.Writer; T: Texts.Text;
    name, ext: ARRAY 32 OF CHAR;

  PROCEDURE getExt(name: ARRAY OF CHAR; VAR ext: ARRAY OF CHAR);
    VAR end, i, j: INTEGER;
  BEGIN end := Strings.Length(name);
    i := end; REPEAT DEC(i) UNTIL (i < 0) OR (name[i] = "."); j := 0;
    IF i >= 0 THEN WHILE i <= end DO ext[j] := name[i]; INC(i); INC(j) END;
    END;
    ext[j] := 0X
  END getExt;
  
BEGIN NEW(T); Texts.Open(T, ".params"); Texts.OpenWriter(P);
  IF Args.argc = 2 THEN Args.GetArg(1, name);
    Texts.WriteString(P, name); Texts.WriteLn(P);
    Texts.Append(T, P.buf); Oberon.SetPar(T, 0);
    getExt(name, ext);
    IF ext = ".sms" THEN OMSPTool.DecSym
    ELSIF ext = ".mpc" THEN OMSPTool.DecObj
    END
  END
END omspt.
