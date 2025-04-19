# Makefile for OMSP

PODIR = ../PO

ALL: omspc omspt omsplk

OMSPC = $(PODIR)/FileDir.k $(PODIR)/POFiles.k $(PODIR)/Texts.k \
$(PODIR)/Oberon.k $(PODIR)/TextOutput.k $(PODIR)/System.k $(PODIR)/Display.k \
OMSPS.k $(PODIR)/CRC32.k OMSPB.k OMSPA.k OMSPG.k OMSPP.k omspc.k

omspc: $(OMSPC)
	obc -C -o omspc $(OMSPC)

omspc.k: $(PODIR)/Texts.k $(PODIR)/Oberon.k OMSPP.k
OMSPS.k: $(PODIR)/Texts.k $(PODIR)/Oberon.k
OMSPB.k: $(PODIR)/POFiles.k $(PODIR)/CRC32.k OMSPS.k
OMSPA.k: OMSPS.k
OMSPG.k: $(PODIR)/POFiles.k OMSPA.k OMSPS.k OMSPB.k
OMSPP.k: $(PODIR)/Display.k $(PODIR)/Texts.k $(PODIR)/Oberon.k OMSPS.k OMSPB.k OMSPG.k

OMSPT = $(PODIR)/FileDir.k $(PODIR)/POFiles.k $(PODIR)/Texts.k \
$(PODIR)/TextsEx.k $(PODIR)/Oberon.k $(PODIR)/TextOutput.k $(PODIR)/System.k \
$(PODIR)/CRC32.k OMSPS.k OMSPA.k OMSPD.k OMSPB.k OMSPTool.k omspt.k

omspt: $(OMSPT)
	obc -C -o omspt $(OMSPT)

omspt.k: $(PODIR)/Texts.k $(PODIR)/Oberon.k OMSPTool.k
OMSPD.k: $(PODIR)/Texts.k $(PODIR)/TextsEx.k OMSPA.k
OMSPTool.k: $(PODIR)/POFiles.k $(PODIR)/Texts.k $(PODIR)/Oberon.k \
$(PODIR)/TextsEx.k OMSPB.k OMSPA.k OMSPD.k

OMSPLK = $(PODIR)/Modules.k $(PODIR)/FileDir.k $(PODIR)/POFiles.k \
$(PODIR)/FilesEx.k $(PODIR)/Texts.k $(PODIR)/TextsEx.k \
$(PODIR)/Oberon.k $(PODIR)/TextOutput.k $(PODIR)/System.k \
$(PODIR)/CRC32.k OMSPS.k OMSPB.k OMSPA.k OMSPG.k OMSPL.k omsplk.k

omsplk: $(OMSPLK)
	obc -C -o omsplk $(OMSPLK)

omsplk.k: $(PODIR)/Texts.k $(PODIR)/Oberon.k OMSPL.k
OMSPL.k: $(PODIR)/Modules.k OMSPG.k $(PODIR)/POFiles.k \
$(PODIR)/FilesEx.k $(PODIR)/Texts.k $(PODIR)/Oberon.k

%.k: %.Mod
	obc -07 -I $(PODIR) -c $<

