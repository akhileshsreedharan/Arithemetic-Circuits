* FA Carry generate

.include inverter1.mod
.include cmos_tg.mod

.subckt fa_carry_gen VSUP GND1 ABAR CiBAR P PBAR Cout PBODY NBODY

xcmos_tg1 ABAR Xout P PBAR PBODY NBODY cmos_tg
xcmos_tg2 CiBAR Xout PBAR P PBODY NBODY cmos_tg
xinv1 VSUP GND1 Xout Cout PBODY NBODY inverter1

.ends
