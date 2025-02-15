MODULE Oberon;
  IMPORT Texts;
  
  VAR
    Log*: Texts.Text;
    
    Par*: RECORD
      text*: Texts.Text;
      pos*: INTEGER
    END;

  (*command interpretation*)
  PROCEDURE SetPar*(T: Texts.Text; pos: INTEGER);
  BEGIN Par.text := T; Par.pos := pos
  END SetPar;

  PROCEDURE OpenLog*(T: Texts.Text);
  BEGIN Log := T
  END OpenLog;

  PROCEDURE GetSelection* (VAR text: Texts.Text; VAR beg, end, time: INTEGER);
  (*not implemented*)
  END GetSelection;

  PROCEDURE Collect* (count: INTEGER);
  (*not implemented*)
  END Collect;

END Oberon.
