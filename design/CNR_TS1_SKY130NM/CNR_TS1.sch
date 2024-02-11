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
N 450 -840 1030 -840 {
lab=VDD_1V8}
N 1030 -840 1030 -780 {
lab=VDD_1V8}
N 1060 -580 1060 -540 {
lab=PWRUP_B_1V8}
N 380 -330 550 -330 {
lab=VSS}
N 550 -340 550 -330 {
lab=VSS}
N 510 -370 510 -330 {
lab=VSS}
N 510 -520 510 -370 {
lab=VSS}
N 550 -480 550 -400 {
lab=VD}
N 760 -790 790 -790 {
lab=VDD_1V8}
N 790 -840 790 -790 {
lab=VDD_1V8}
N 760 -840 760 -820 {
lab=VDD_1V8}
N 630 -660 720 -660 {
lab=VD}
N 630 -660 630 -560 {
lab=VD}
N 550 -560 630 -560 {
lab=VD}
N 550 -330 720 -330 {
lab=VSS}
N 680 -790 720 -790 {
lab=VB_FVF}
N 680 -790 680 -620 {
lab=VB_FVF}
N 680 -620 760 -620 {
lab=VB_FVF}
N 830 -690 990 -690 {
lab=VDD_ROSC}
N 830 -330 1030 -330 {
lab=VSS}
N 1030 -490 1030 -330 {
lab=VSS}
N 920 -690 920 -590 {
lab=VDD_ROSC}
N 920 -440 920 -330 {
lab=VSS}
N 1190 -670 1260 -670 {
lab=DO_1V8}
N 760 -630 760 -620 {
lab=VB_FVF}
N 760 -620 760 -590 {
lab=VB_FVF}
N 760 -370 790 -370 {
lab=VSS}
N 790 -370 790 -330 {
lab=VSS}
N 680 -370 720 -370 {
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
lab=VR_TOP}
N 550 -810 580 -810 {
lab=VDD_1V8}
N 580 -840 580 -810 {
lab=VDD_1V8}
N 450 -810 510 -810 {
lab=PWRUP_N_1V8}
N 790 -460 790 -370 {
lab=VSS}
N 760 -760 760 -690 {
lab=VDD_ROSC}
N 760 -690 830 -690 {
lab=VDD_ROSC}
N 760 -340 760 -330 {
lab=VSS}
N 720 -330 760 -330 {
lab=VSS}
N 760 -330 790 -330 {
lab=VSS}
N 790 -330 830 -330 {
lab=VSS}
N 760 -660 790 -660 {
lab=VDD_1V8}
N 380 -840 450 -840 {
lab=VDD_1V8}
N 940 -800 960 -800 {
lab=VDD_1V8}
N 960 -840 960 -800 {
lab=VDD_1V8}
N 940 -840 940 -830 {
lab=VDD_1V8}
N 850 -800 900 -800 {
lab=PWRUP_B_1V8}
N 940 -770 940 -690 {
lab=VDD_ROSC}
N 550 -570 550 -560 {
lab=VD}
N 550 -560 550 -480 {
lab=VD}
N 510 -610 510 -520 {
lab=VSS}
N 510 -610 530 -610 {
lab=VSS}
N 780 -550 790 -550 {
lab=VSS}
N 790 -550 790 -460 {
lab=VSS}
N 760 -410 760 -400 {
lab=VR_BOT}
N 780 -450 790 -450 {
lab=VSS}
N 760 -510 760 -490 {
lab=#net1}
N 920 -530 920 -440 {
lab=VSS}
N 1030 -580 1030 -490 {
lab=VSS}
N 730 -400 760 -400 {
lab=VR_BOT}
N 790 -790 790 -660 {
lab=VDD_1V8}
C {devices/ipin.sym} 380 -840 0 0 {name=p1 lab=VDD_1V8}
C {devices/ipin.sym} 380 -330 0 0 {name=p2 lab=VSS}
C {devices/ipin.sym} 370 -230 0 0 {name=p3 lab=PWRUP_1V8}
C {devices/opin.sym} 1260 -670 0 0 {name=p9 lab=DO_1V8}
C {SUN_PLL_SKY130NM/SUN_PLL_ROSC.sym} 1140 -660 0 0 {name=x1}
C {sky130_fd_pr/pnp_05v5.sym} 530 -370 0 0 {name=Q1
model=pnp_05v5_W3p40L3p40
m=1
spiceprefix=X
}
C {SUN_TR_SKY130NM/SUNTR_RPPO16.sym} 550 -650 1 0 {name=x2 }
C {CNR_ATR_SKY130NM/CNRATR_PCH_12C1F2.sym} 720 -790 0 0 {name=x4}
C {SUN_TR_SKY130NM/SUNTR_RPPO16.sym} 760 -510 3 0 {name=x5 }
C {devices/lab_wire.sym} 920 -690 0 0 {name=p4 sig_type=std_logic lab=VDD_ROSC}
C {devices/lab_wire.sym} 740 -620 0 0 {name=p5 sig_type=std_logic lab=VB_FVF}
C {devices/lab_wire.sym} 630 -660 0 0 {name=p6 sig_type=std_logic lab=VD}
C {sky130_fd_pr/cap_mim_m3_1.sym} 920 -560 0 0 {name=C1 model=cap_mim_m3_1 W=10 L=10 MF=1 spiceprefix=X}
C {CNR_ATR_SKY130NM/CNRATR_NCH_12C1F2.sym} 720 -370 0 0 {name=x6 }
C {SUN_TR_SKY130NM/SUNTR_IVX1_CV.sym} 430 -230 0 0 {name=x7 }
C {SUN_TR_SKY130NM/SUNTR_IVX1_CV.sym} 690 -230 0 0 {name=x8 }
C {devices/lab_wire.sym} 680 -230 0 0 {name=p8 sig_type=std_logic lab=PWRUP_N_1V8}
C {devices/lab_wire.sym} 900 -230 0 0 {name=p10 sig_type=std_logic lab=PWRUP_B_1V8}
C {devices/lab_wire.sym} 670 -190 0 0 {name=p11 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 620 -270 0 0 {name=p12 sig_type=std_logic lab=VDD_1V8}
C {devices/lab_wire.sym} 680 -370 0 0 {name=p7 sig_type=std_logic lab=PWRUP_B_1V8}
C {CNR_ATR_SKY130NM/CNRATR_PCH_12C1F2.sym} 510 -810 0 0 {name=x9 }
C {devices/lab_wire.sym} 450 -810 0 0 {name=p14 sig_type=std_logic lab=PWRUP_N_1V8}
C {CNR_ATR_SKY130NM/CNRATR_PCH_2C1F2.sym} 900 -800 0 0 {name=x11 }
C {devices/lab_wire.sym} 890 -800 0 0 {name=p13 sig_type=std_logic lab=PWRUP_B_1V8}
C {devices/lab_wire.sym} 1060 -540 3 0 {name=p15 sig_type=std_logic lab=PWRUP_B_1V8}
C {cborder/border_s.sym} 1250 -170 0 0 {user="Carsten Wulff" company="Carsten Wulff Software"}
C {CNR_ATR_SKY130NM/CNRATR_PCH_12C1F2.sym} 720 -660 0 0 {name=x3[3:0]}
C {SUN_TR_SKY130NM/SUNTR_RPPO16.sym} 760 -410 3 0 {name=x10 }
C {devices/lab_wire.sym} 550 -720 0 0 {name=p16 sig_type=std_logic lab=VR_TOP}
C {devices/lab_wire.sym} 730 -400 0 0 {name=p17 sig_type=std_logic lab=VR_BOT}
