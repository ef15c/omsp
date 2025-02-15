MODULE TextOutput;
  IMPORT Out, Texts;

  PROCEDURE SetOutCol(col: BYTE);
    VAR r, g, b: BYTE;
  BEGIN 
    r := ASR(col, 5) MOD 8;
    IF ODD(r) THEN r := LSL(r, 5) + 1FH ELSE r := LSL(r, 5) END;
    g := ASR(col, 2) MOD 8;
    IF ODD(g) THEN g := LSL(g, 5) + 1FH ELSE g := LSL(g, 5) END;
    b := col MOD 4;
    IF ODD(b) THEN b := LSL(b, 6) + 3FH ELSE b := LSL(b, 5) END;
    Out.Char(1BX); Out.String("[38;2;");
    Out.Int(r, 1); Out.Char(";"); Out.Int(g, 1); Out.Char(";");
    Out.Int(b, 1); Out.Char("m")
  END SetOutCol;
  
  PROCEDURE Insert* (T: Texts.Text; beg, end: INTEGER);
    VAR R: Texts.Reader; nextCh: CHAR; col: BYTE;
  BEGIN col := 255;
    Texts.OpenReader(R, T, beg);
    WHILE beg <= end DO Texts.Read(R, nextCh);
      IF col # R.col THEN col := R.col; SetOutCol(col) END;
      IF nextCh # Texts.CR THEN Out.Char(nextCh) ELSE Out.Ln END;
      INC(beg)
    END
  END Insert;

  PROCEDURE DisplayText* (T: Texts.Text; op: INTEGER; beg, end: INTEGER);
  BEGIN ASSERT(op = Texts.insert);
    Insert(T, beg, end)
  END DisplayText;

  PROCEDURE Text* (fname: ARRAY OF CHAR): Texts.Text;
    VAR T: Texts.Text;
  BEGIN NEW(T); T.notify := DisplayText; Texts.Open(T, fname); RETURN T
  END Text;

END TextOutput.
