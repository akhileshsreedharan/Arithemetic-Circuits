* TWO Input EX-OR Gate

 .include inverter1.mod
 .include cmos_tg.mod
 
 .subckt exor2 VSUP GND1 IN1 IN2 OUT PBODY NBODY
 
 xinv1 VSUP GND1 IN2 IN2BAR PBODY NBODY inverter1
 xinv2 IN2 IN2BAR IN1 OUT PBODY NBODY inverter1
 xcmos_tg IN1 OUT IN2 IN2BAR PBODY NBODY cmos_tg
 
 .ends
