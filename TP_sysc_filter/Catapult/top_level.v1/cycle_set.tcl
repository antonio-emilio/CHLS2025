
# Loop constraints
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp CSTEPS_FROM {{. == 0}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while CSTEPS_FROM {{. == 3} {.. == 0}}

# IO operation constraints
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/while:aif:asn(while:land) CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/SHIFT:asn CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/MAC:asn CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/MAC:asn#2 CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/MAC:asn#4 CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/MAC:asn#6 CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/MAC:asn#8 CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/MAC:asn#10 CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/MAC:asn#12 CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/MAC:asn#14 CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/MAC:asn#16 CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/MAC:asn#18 CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/MAC:asn#20 CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/MAC:asn#22 CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/MAC:asn#24 CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/MAC:asn#26 CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/MAC:asn#28 CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/MAC:asn#29 CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/while:if:asn#1 CSTEPS_FROM {{.. == 3}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/valid_out.write#1:asn(valid_out) CSTEPS_FROM {{.. == 3}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/valid_in:asn CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/valid_out.write#2:asn(valid_out) CSTEPS_FROM {{.. == 3}}

# Sync operation constraints

# Real operation constraints
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/MAC-15:mul CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/MAC-16:mul CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/MAC:acc#12 CSTEPS_FROM {{.. == 2}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/MAC-13:mul CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/MAC-14:mul CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/MAC:acc#11 CSTEPS_FROM {{.. == 2}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/MAC:acc#16 CSTEPS_FROM {{.. == 2}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/MAC-11:mul CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/MAC-12:mul CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/MAC:acc#10 CSTEPS_FROM {{.. == 2}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/MAC-9:mul CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/MAC-10:mul CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/MAC:acc#9 CSTEPS_FROM {{.. == 2}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/MAC:acc#15 CSTEPS_FROM {{.. == 2}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/MAC:acc#18 CSTEPS_FROM {{.. == 2}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/MAC-7:mul CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/MAC-8:mul CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/MAC:acc#8 CSTEPS_FROM {{.. == 2}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/MAC-5:mul CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/MAC-6:mul CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/MAC:acc#7 CSTEPS_FROM {{.. == 2}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/MAC:acc#14 CSTEPS_FROM {{.. == 2}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/MAC-3:mul CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/MAC-4:mul CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/MAC:acc#6 CSTEPS_FROM {{.. == 2}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/MAC-1:mul CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/MAC-2:mul CSTEPS_FROM {{.. == 1}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/MAC:acc#13 CSTEPS_FROM {{.. == 2}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/MAC:acc#17 CSTEPS_FROM {{.. == 2}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/MAC:acc CSTEPS_FROM {{.. == 2}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/MAC-16:acc#1 CSTEPS_FROM {{.. == 3}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/while:if:acc CSTEPS_FROM {{.. == 3}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/while:if:nor#3 CSTEPS_FROM {{.. == 3}}
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/while:if:while:if:nor#1 CSTEPS_FROM {{.. == 3}}
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
directive set /top_level/FIR_FILTER/FIR_FILTER:rlp/while/while:mux#1 CSTEPS_FROM {{.. == 1}}

# Probe constraints
