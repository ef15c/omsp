MODULE omsplk;
  IMPORT Texts, Oberon, Args, OMSPL;

  VAR P: Texts.Writer; T: Texts.Text;
    i: INTEGER; name: ARRAY 32 OF CHAR;
    
BEGIN NEW(T); Texts.Open(T, ".params"); Texts.OpenWriter(P);
  FOR i := 1 TO Args.argc - 1 DO Args.GetArg(i, name);
    Texts.WriteString(P, name); Texts.WriteLn(P)
  END; Texts.Append(T, P.buf); Oberon.SetPar(T, 0);
  OMSPL.Link
END omsplk.
