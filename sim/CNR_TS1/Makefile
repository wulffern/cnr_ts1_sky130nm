

all: typical etc mc summary

include ../../tech/make/sim.make

TB=tran
VIEW=Sch
#VIEW=Lay
CELL=CNR_TS1
LIB =CNR_TS1_SKY130NM
OPT=



test:
	${MAKE} typical OPT="Debug"

typical: netlist
	cicsim run --name ${VIEW}_typical ${TB} ${OPT} ${VIEW} Gt Ktt Tt Vt

vdd: netlist
	cicsim run --name ${VIEW}_typical ${TB} ${OPT} ${VIEW} Gt Ktt Tt "Vt,Vl,Vh"

slow: netlist
	cicsim run --name ${VIEW}_slow ${TB} ${OPT} ${VIEW} Gt Kss "Th,Tl" Vl

fast: netlist
	cicsim run --name ${VIEW}_fast ${TB} ${OPT} ${VIEW} Gt Kff "Th,Tl" Vh

tfs: netlist
	cicsim run --name ${VIEW}_tfs ${TB} ${OPT} ${VIEW} Gt "Ktt,Kss,Kff" "Tt,Th,Tl" "Vt,Vl,Vh"

etc: netlist
	cicsim run --name ${VIEW}_etc ${TB} ${OPT} ${VIEW} Gt "Kss,Kff,Ksf,Kfs" Tt "Vl,Vh"

etcl: netlist
	cicsim run --name ${VIEW}_etcl ${TB} ${OPT} ${VIEW} Gt "Kss,Kff,Ksf,Kfs" Tt "Vl"

etch: netlist
	cicsim run --name ${VIEW}_etch ${TB} ${OPT} ${VIEW} Gt "Kss,Kff,Ksf,Kfs" Tt "Vh"

mc: netlist
	cicsim run --name ${VIEW}_mc --count 30 ${TB} ${OPT} ${VIEW} Gt "Kttmm" "Tt" "Vt"

ntc: netlist
	cicsim run --name ${VIEW}_ntc ${TB} ${OPT} ${VIEW} Gt "Ktt,Kss,Kff" "Tt" Vt

temp: netlist
	cicsim run --name ${VIEW}_temp ${TB} ${OPT} ${VIEW} Gt "Ktt" "Tt,Th,Tl" Vt

summary:
	cicsim summary --output "README.md"

slide:
	pandoc -s  -t slidy README.md -o README.html


clean:
	-rm -rf output_*
	-rm -rf __pycache__
	-rm *.run
	-rm *.pdf
	-rm *.csv
