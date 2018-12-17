*  Inverter definition 2to1 sizing  
*
.subckt inverter1 VSUP GND1 IN1 OUT1 PBODY NBODY
.model P1 PMOS (LEVEL = 6 VTO= -0.4  UO = 86.88 TOX = 1E-08 GAMMA = -0.4 LAMBDA = -0.1 NSUB = 1.6E+15)
.model N1 NMOS (LEVEL = 6 VTO = 0.4 UO = 333.333 TOX = 1E-08 GAMMA = 0.4 LAMBDA = 0.06 NSUB = 1.6E+15)

M1 OUT1 IN1 VSUP PBODY P1 L = 0.25u W = 1u
M2 OUT1 IN1 GND1 NBODY N1 L = 0.25u W = 0.5u
.ends

