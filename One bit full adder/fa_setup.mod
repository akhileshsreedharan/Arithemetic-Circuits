* FA SETUP

.include inverter1.mod
.include exor2.mod

.subckt fa_setup VSUP GND1 A B Ci P PBAR ABAR CiBAR PBODY NBODY 

xinv1 VSUP GND1 A ABAR PBODY NBODY inverter1
xinv2 VSUP GND1 Ci CiBAR PBODY NBODY inverter1
xexor1 VSUP GND1 B A P PBODY NBODY exor2
xexor2 VSUP GND1 B ABAR PBAR PBODY NBODY exor2 
	
.ends 
