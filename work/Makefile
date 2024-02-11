
#- Core makefile provides the following commands:
# -----------------------------------------------------------
# ip: generate ../design/<LIB> from ../cic/ip.json
# gds: generate gds/<CELL>.gds
# cdl: generate cdl/<CELL>.cdl
# lvs: Check cdl/<CELL>.cdl versus ../design/<LIB>/<CELL>.mag
# lpe: Extract parasitics lpe/<CELL>.spi
# drc: Run design rule checks on ../design/<LIB>/<CELL>.mag
# svg: Make schematic SVGs in ../documents/schematic.md
# -----------------------------------------------------------


PREFIX=
LIB=CNR_TS1_SKY130NM
CELL=CNR_TS1

#- Which libraries to make SVG files for
SVGLIBS=CNR_TS1_SKY130NM

#- Provide cells you want to check for the lvsall drcall commands
CELLS = CNR_TS1

include ../tech/make/core.make
