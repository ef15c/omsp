# Makefile for Project Oberon

#OBC = $(HOME)/projects/obc-3/install/bin/obc
OBC = obc

PO: POFiles.k Texts.k Oberon.k System.k TextOutput.k CRC32.k Display.k \
FileDir.k TextsEx.k Modules.k FilesEx.k

POFiles.k: FileDir.k
Texts.k: POFiles.k
Oberon.k: Texts.k
System.k: Oberon.k TextOutput.k
TextOutput.k: Texts.k
TextsEx.k: Texts.k
FilesEx.k: POFiles.k

FileDir.k: FileDir.Mod
	$(OBC) -x -c $<

%.k: %.Mod
	$(OBC) -07 -c $<
