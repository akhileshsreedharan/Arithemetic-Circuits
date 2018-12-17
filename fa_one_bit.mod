* FA ONE BIT

.include fa_setup.mod
.include fa_carry_gen.mod
.include fa_sum_gen.mod

.subckt fa_one_bit VSUP GND1 A B Ci S Cout PBODY NBODY

xfa_setup VSUP GND1 A B Ci P PBAR ABAR CiBAR PBODY NBODY fa_setup
xcarry_gen VSUP GND1 ABAR CiBAR P PBAR Cout PBODY NBODY fa_carry_gen
xfa_sum_gen VSUP GND1 Ci CiBAR P PBAR S PBODY NBODY fa_sum_gen

.ends 
