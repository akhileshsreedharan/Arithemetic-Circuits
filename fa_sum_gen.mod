* SUM Generate

.include inverter1.mod
.include cmos_tg.mod

.subckt fa_sum_gen VSUP GND1 Ci CiBAR P PBAR S PBODY NBODY

xcmos_tg1 CiBAR Xout P PBAR PBODY NBODY cmos_tg
xcmos_tg2 Ci Xout PBAR P PBODY NBODY cmos_tg
xinv1 VSUP GND1 Xout S PBODY NBODY inverter1

.ends
