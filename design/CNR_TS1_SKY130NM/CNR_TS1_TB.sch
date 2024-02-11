v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 690 -560 1490 -160 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.25e-08
x2=1.725e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=do_1v8

dataset=-1
unitx=1
logx=0
logy=0
color=5}
B 2 690 -1000 1490 -600 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.25e-08
x2=1.725e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="xdut.vdd_rosc
pwrup_1v8"

dataset=-1
unitx=1
logx=0
logy=0
color="5 4"}
N 170 -250 200 -250 {
lab=VDD_1V8}
N 170 -230 200 -230 {
lab=VSS}
N 170 -210 200 -210 {
lab=PWRUP_1V8}
N 500 -250 530 -250 {
lab=DO_1V8}
C {CNR_TS1_SKY130NM/CNR_TS1.sym} 350 -230 0 0 {name=xdut}
C {devices/launcher.sym} 440 -100 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/../../sim/CNR_TS1/output_tran/tran_SchGtKttTtVt_-40.raw tran"
}
C {devices/lab_wire.sym} 170 -250 0 0 {name=p1 sig_type=std_logic lab=VDD_1V8}
C {devices/lab_wire.sym} 170 -230 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 170 -210 0 0 {name=p3 sig_type=std_logic lab=PWRUP_1V8}
C {devices/lab_wire.sym} 530 -250 0 1 {name=p4 sig_type=std_logic lab=DO_1V8}
