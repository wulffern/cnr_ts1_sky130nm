v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Temperature sensor} 620 -1010 0 0 1 1 {}
T {VD is complementary to absolute temperature
VDD_ROSC is level shifted version of VD, using a flipped voltage follower. 
The output DO_1V8 has a frequency that is inversly proportionalish to temperature.} 20 -110 0 0 0.4 0.4 {}
N 380 -840 960 -840 {
lab=VDD_1V8}
N 960 -840 960 -780 {
lab=VDD_1V8}
N 990 -580 990 -540 {
lab=PWRUP_B_1V8}
N 380 -420 550 -420 {
lab=VSS}
N 550 -430 550 -420 {
lab=VSS}
N 510 -460 510 -420 {
lab=VSS}
N 510 -610 530 -610 {
lab=VSS}
N 510 -610 510 -460 {
lab=VSS}
N 550 -570 550 -490 {
lab=VD}
N 760 -790 790 -790 {
lab=VDD_1V8}
N 790 -840 790 -790 {
lab=VDD_1V8}
N 760 -840 760 -820 {
lab=VDD_1V8}
N 760 -760 760 -690 {
lab=VDD_ROSC}
N 630 -660 720 -660 {
lab=VD}
N 630 -660 630 -560 {
lab=VD}
N 550 -560 630 -560 {
lab=VD}
N 550 -420 720 -420 {
lab=VSS}
N 720 -420 760 -420 {
lab=VSS}
N 680 -790 720 -790 {
lab=VB_FVF}
N 680 -790 680 -620 {
lab=VB_FVF}
N 680 -620 760 -620 {
lab=VB_FVF}
N 760 -690 920 -690 {
lab=VDD_ROSC}
N 760 -420 960 -420 {
lab=VSS}
N 960 -580 960 -420 {
lab=VSS}
N 850 -690 850 -590 {
lab=VDD_ROSC}
N 850 -530 850 -420 {
lab=VSS}
N 1120 -670 1190 -670 {
lab=DO_1V8}
N 760 -630 760 -620 {
lab=VB_FVF}
N 760 -620 760 -590 {
lab=VB_FVF}
N 760 -460 790 -460 {
lab=VSS}
N 790 -460 790 -420 {
lab=VSS}
N 760 -430 760 -420 {
lab=VSS}
N 760 -510 760 -490 {
lab=#net1}
N 680 -460 720 -460 {
lab=PWRUP_B_1V8}
N 370 -230 430 -230 {
lab=PWRUP_1V8}
N 610 -230 690 -230 {
lab=PWRUP_N_1V8}
N 570 -190 730 -190 {
lab=VSS}
N 570 -270 730 -270 {
lab=VDD_1V8}
N 470 -270 570 -270 {
lab=VDD_1V8}
N 510 -230 610 -230 {
lab=PWRUP_N_1V8}
N 470 -190 570 -190 {
lab=VSS}
N 770 -230 910 -230 {
lab=PWRUP_B_1V8}
N 550 -780 550 -650 {
lab=#net2}
N 550 -810 580 -810 {
lab=VDD_1V8}
N 580 -840 580 -810 {
lab=VDD_1V8}
N 450 -810 510 -810 {
lab=#net3}
C {devices/ipin.sym} 380 -840 0 0 {name=p1 lab=VDD_1V8}
C {devices/ipin.sym} 380 -420 0 0 {name=p2 lab=VSS}
C {devices/ipin.sym} 370 -230 0 0 {name=p3 lab=PWRUP_1V8}
C {devices/opin.sym} 1190 -670 0 0 {name=p9 lab=DO_1V8}
C {SUN_PLL_SKY130NM/SUN_PLL_ROSC.sym} 1070 -660 0 0 {name=x1}
C {sky130_fd_pr/pnp_05v5.sym} 530 -460 0 0 {name=Q1
model=pnp_05v5_W3p40L3p40
m=1
spiceprefix=X
}
C {SUN_TR_SKY130NM/SUNTR_RPPO16.sym} 550 -650 1 0 {name=x2 }
C {CNR_ATR_SKY130NM/CNRATR_PCH_12C1F2.sym} 720 -660 0 0 {name=x3 }
C {CNR_ATR_SKY130NM/CNRATR_PCH_12C4F0.sym} 720 -790 0 0 {name=x4 }
C {SUN_TR_SKY130NM/SUNTR_RPPO16.sym} 760 -590 1 0 {name=x5 }
C {cborder/border_s.sym} 1250 -170 0 0 {}
C {devices/lab_wire.sym} 850 -690 0 0 {name=p4 sig_type=std_logic lab=VDD_ROSC}
C {devices/lab_wire.sym} 740 -620 0 0 {name=p5 sig_type=std_logic lab=VB_FVF}
C {devices/lab_wire.sym} 630 -660 0 0 {name=p6 sig_type=std_logic lab=VD}
C {sky130_fd_pr/cap_mim_m3_1.sym} 850 -560 0 0 {name=C1 model=cap_mim_m3_1 W=10 L=10 MF=1 spiceprefix=X}
C {CNR_ATR_SKY130NM/CNRATR_NCH_8C1F2.sym} 720 -460 0 0 {name=x6 }
C {SUN_TR_SKY130NM/SUNTR_IVX1_CV.sym} 430 -230 0 0 {name=x7 }
C {SUN_TR_SKY130NM/SUNTR_IVX1_CV.sym} 690 -230 0 0 {name=x8 }
C {devices/lab_wire.sym} 680 -230 0 0 {name=p8 sig_type=std_logic lab=PWRUP_N_1V8}
C {devices/lab_wire.sym} 900 -230 0 0 {name=p10 sig_type=std_logic lab=PWRUP_B_1V8}
C {devices/lab_wire.sym} 670 -190 0 0 {name=p11 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 620 -270 0 0 {name=p12 sig_type=std_logic lab=VDD_1V8}
C {devices/lab_wire.sym} 990 -560 3 0 {name=p13 sig_type=std_logic lab=PWRUP_B_1V8}
C {devices/lab_wire.sym} 680 -460 0 0 {name=p7 sig_type=std_logic lab=PWRUP_B_1V8}
C {CNR_ATR_SKY130NM/CNRATR_PCH_12C1F2.sym} 510 -810 0 0 {name=x9 }
C {devices/lab_wire.sym} 450 -810 0 0 {name=p14 sig_type=std_logic lab=PWRUP_N_1V8}
