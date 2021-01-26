DBGVIEW=*SOURCE

SHELL=/QOpenSys/usr/bin/qsh

BIN_LIB=TESTLIB

DTA_LIB=$(BIN_LIB)

SRC_LIB=$(BIN_LIB)

MBR_PGM=SOURCE

MBR_DDS=SOURCE

LIBLIST=$(BIN_LIB) QTEMP

all: sysvarr.sqlrpgle

# Testing SQLRPGLE object creation..

# sysvarr.sqlrpgle

%.sqlrpgle:

system "CRTSQLRPGI OBJ($(BIN_LIB)/$*) SRCSTMF('./src/qrpglesrc/$*.sqlrpgle') OBJTYPE(*PGM) REPLACE(*YES)"

system "CPYFRMSTMF FROMSTMF('./src/qrpglesrc/$*.sqlrpgle') TOMBR('/QSYS.lib/$(SRC_LIB).lib/$(MBR_PGM).file/$*.mbr') MBROPT(*replace)"

all:

@echo "Build finished!" 