
# Loop constraints
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp CSTEPS_FROM {{. == 0}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while CSTEPS_FROM {{. == 3} {.. == 0}}

# IO operation constraints
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/while:aif:asn(while:land) CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/SHIFT:asn(taps(0)) CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/MAC:asn(MAC:coeffs(0).tmp) CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/MAC:asn(MAC:coeffs(0).tmp)#1 CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/MAC:asn(MAC:coeffs(0).tmp)#2 CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/MAC:asn(MAC:coeffs(0).tmp)#3 CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/MAC:asn(MAC:coeffs(0).tmp)#4 CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/MAC:asn(MAC:coeffs(0).tmp)#5 CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/MAC:asn(MAC:coeffs(0).tmp)#6 CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/MAC:asn(MAC:coeffs(0).tmp)#7 CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/MAC:asn(MAC:coeffs(0).tmp)#8 CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/MAC:asn(MAC:coeffs(0).tmp)#9 CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/MAC:asn(MAC:coeffs(0).tmp)#10 CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/MAC:asn(MAC:coeffs(0).tmp)#11 CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/MAC:asn(MAC:coeffs(0).tmp)#12 CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/MAC:asn(MAC:coeffs(0).tmp)#13 CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/MAC:asn(MAC:coeffs(0).tmp)#14 CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/MAC:asn(MAC:coeffs(0).tmp)#15 CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/while:if:asn#1 CSTEPS_FROM {{.. == 3}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/valid_out.write#1:asn(valid_out) CSTEPS_FROM {{.. == 3}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/valid_in:asn CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/valid_out.write#2:asn(valid_out) CSTEPS_FROM {{.. == 3}}

# Sync operation constraints

# Real operation constraints
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/MAC:mux CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/MAC:mux#2 CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/while:while:and#1 CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/while:while:and CSTEPS_FROM {{.. == 2}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/MAC:mux1h CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/while:mux#43 CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/while:mux#1 CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/while:mux#2 CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/while:mux#3 CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/while:mux#4 CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/while:mux#5 CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/while:mux#6 CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/while:mux#7 CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/while:mux#8 CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/while:mux#9 CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/while:mux#10 CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/while:mux#11 CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/while:mux#12 CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/while:mux#13 CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/while:mux#14 CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/while:mux#15 CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/MAC:mux#8 CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/MAC:mul CSTEPS_FROM {{.. == 2}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/MAC:acc#1 CSTEPS_FROM {{.. == 3}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/MAC:acc#2 CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/while:if:acc CSTEPS_FROM {{.. == 3}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/while:if:nor#3 CSTEPS_FROM {{.. == 3}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/while:if:while:if:nor#1 CSTEPS_FROM {{.. == 3}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/while:mux#21 CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/while:mux#22 CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/while:mux#23 CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/while:mux#24 CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/while:mux#25 CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/while:mux#26 CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/while:mux#27 CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/while:mux#28 CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/while:mux#29 CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/while:mux#30 CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/while:mux#31 CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/while:mux#32 CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/while:mux#33 CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/while:mux#34 CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/while:mux#35 CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/while:mux#20 CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/while:mux#36 CSTEPS_FROM {{.. == 3}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/while:mux#40 CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/while:mux#41 CSTEPS_FROM {{.. == 1}}

# Probe constraints
