
>
Refreshing IP repositories
234*coregenZ19-234h px� 
�
�Failed to load user IP repository '%s'; %s
If this directory should no longer be in your list of user repositories, go to the IP Settings dialog and remove it.
1318*coregen2\
Zc:/Users/Conta/Documents/GitHub/IMT/CHLS2025/TP_sysc_filter/Filtre_NexysVideo_STUDENT/repo2 
Can't find the specified path.Z19-2248h px� 
j
"Loaded Vivado IP repository '%s'.
1332*coregen2!
C:/Xilinx/Vivado/2024.2/data/ipZ19-2313h px� 
�
�The host OS only allows 260 characters in a normal path. The IP cache path is more than 80 characters. If you experience issues with IP caching, please consider changing the IP cache to a location with a shorter path. Alternately consider using the OS subst command to map part of the path to a drive letter. 
Current IP cache path is %s 2293*coregen2o
mc:/Users/Conta/Documents/GitHub/IMT/CHLS2025/TP_sysc_filter/Filtre_NexysVideo_STUDENT/proj/AudioProc.cache/ipZ19-4995h px� 
�
Command: %s
53*	vivadotcl2�
�synth_design -top top_level_FIR_FILTER -part xc7a200tsbg484-1 -fanout_limit 400 -fsm_extraction one_hot -keep_equivalent_registers -resource_sharing off -no_lc -shreg_min_size 5Z4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
{
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2

xc7a200tZ17-347h px� 
k
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2

xc7a200tZ17-349h px� 
E
Loading part %s157*device2
xc7a200tsbg484-1Z21-403h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
2Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
N
#Helper process launched with PID %s4824*oasys2
31708Z8-7075h px� 
�
%s*synth2{
yStarting RTL Elaboration : Time (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 1080.859 ; gain = 467.520
h px� 
�
synthesizing module '%s'638*oasys2
top_level_FIR_FILTER2j
fC:/Users/Conta/Documents/Github/IMT/CHLS2025/TP_sysc_filter/Filtre_NexysVideo_STUDENT/src/hdl/rtl.vhdl2
478@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
top_level_FIR_FILTER2
02
12j
fC:/Users/Conta/Documents/Github/IMT/CHLS2025/TP_sysc_filter/Filtre_NexysVideo_STUDENT/src/hdl/rtl.vhdl2
478@Z8-256h px� 
�
%s*synth2{
yFinished RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 1189.668 ; gain = 576.328
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 1189.668 ; gain = 576.328
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 1189.668 ; gain = 576.328
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0072

1189.6682
0.000Z17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
Parsing XDC File [%s]
179*designutils2
{C:/Users/Conta/Documents/Github/IMT/CHLS2025/TP_sysc_filter/Filtre_NexysVideo_STUDENT/src/constraints/NexysVideo_Master.xdc8Z20-179h px� 
�
No ports matched '%s'.
584*	planAhead2
	CLK100MHZ2
{C:/Users/Conta/Documents/Github/IMT/CHLS2025/TP_sysc_filter/Filtre_NexysVideo_STUDENT/src/constraints/NexysVideo_Master.xdc2
88@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2
{C:/Users/Conta/Documents/Github/IMT/CHLS2025/TP_sysc_filter/Filtre_NexysVideo_STUDENT/src/constraints/NexysVideo_Master.xdc2
88@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
led32
{C:/Users/Conta/Documents/Github/IMT/CHLS2025/TP_sysc_filter/Filtre_NexysVideo_STUDENT/src/constraints/NexysVideo_Master.xdc2
158@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2
{C:/Users/Conta/Documents/Github/IMT/CHLS2025/TP_sysc_filter/Filtre_NexysVideo_STUDENT/src/constraints/NexysVideo_Master.xdc2
158@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
led42
{C:/Users/Conta/Documents/Github/IMT/CHLS2025/TP_sysc_filter/Filtre_NexysVideo_STUDENT/src/constraints/NexysVideo_Master.xdc2
168@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2
{C:/Users/Conta/Documents/Github/IMT/CHLS2025/TP_sysc_filter/Filtre_NexysVideo_STUDENT/src/constraints/NexysVideo_Master.xdc2
168@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
led52
{C:/Users/Conta/Documents/Github/IMT/CHLS2025/TP_sysc_filter/Filtre_NexysVideo_STUDENT/src/constraints/NexysVideo_Master.xdc2
178@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2
{C:/Users/Conta/Documents/Github/IMT/CHLS2025/TP_sysc_filter/Filtre_NexysVideo_STUDENT/src/constraints/NexysVideo_Master.xdc2
178@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
led62
{C:/Users/Conta/Documents/Github/IMT/CHLS2025/TP_sysc_filter/Filtre_NexysVideo_STUDENT/src/constraints/NexysVideo_Master.xdc2
188@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2
{C:/Users/Conta/Documents/Github/IMT/CHLS2025/TP_sysc_filter/Filtre_NexysVideo_STUDENT/src/constraints/NexysVideo_Master.xdc2
188@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
led72
{C:/Users/Conta/Documents/Github/IMT/CHLS2025/TP_sysc_filter/Filtre_NexysVideo_STUDENT/src/constraints/NexysVideo_Master.xdc2
198@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2
{C:/Users/Conta/Documents/Github/IMT/CHLS2025/TP_sysc_filter/Filtre_NexysVideo_STUDENT/src/constraints/NexysVideo_Master.xdc2
198@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
BTNC2
{C:/Users/Conta/Documents/Github/IMT/CHLS2025/TP_sysc_filter/Filtre_NexysVideo_STUDENT/src/constraints/NexysVideo_Master.xdc2
238@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2
{C:/Users/Conta/Documents/Github/IMT/CHLS2025/TP_sysc_filter/Filtre_NexysVideo_STUDENT/src/constraints/NexysVideo_Master.xdc2
238@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
BTND2
{C:/Users/Conta/Documents/Github/IMT/CHLS2025/TP_sysc_filter/Filtre_NexysVideo_STUDENT/src/constraints/NexysVideo_Master.xdc2
248@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2
{C:/Users/Conta/Documents/Github/IMT/CHLS2025/TP_sysc_filter/Filtre_NexysVideo_STUDENT/src/constraints/NexysVideo_Master.xdc2
248@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
BTNL2
{C:/Users/Conta/Documents/Github/IMT/CHLS2025/TP_sysc_filter/Filtre_NexysVideo_STUDENT/src/constraints/NexysVideo_Master.xdc2
258@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2
{C:/Users/Conta/Documents/Github/IMT/CHLS2025/TP_sysc_filter/Filtre_NexysVideo_STUDENT/src/constraints/NexysVideo_Master.xdc2
258@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
BTNR2
{C:/Users/Conta/Documents/Github/IMT/CHLS2025/TP_sysc_filter/Filtre_NexysVideo_STUDENT/src/constraints/NexysVideo_Master.xdc2
268@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2
{C:/Users/Conta/Documents/Github/IMT/CHLS2025/TP_sysc_filter/Filtre_NexysVideo_STUDENT/src/constraints/NexysVideo_Master.xdc2
268@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
BTNU2
{C:/Users/Conta/Documents/Github/IMT/CHLS2025/TP_sysc_filter/Filtre_NexysVideo_STUDENT/src/constraints/NexysVideo_Master.xdc2
278@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2
{C:/Users/Conta/Documents/Github/IMT/CHLS2025/TP_sysc_filter/Filtre_NexysVideo_STUDENT/src/constraints/NexysVideo_Master.xdc2
278@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
rstn2
{C:/Users/Conta/Documents/Github/IMT/CHLS2025/TP_sysc_filter/Filtre_NexysVideo_STUDENT/src/constraints/NexysVideo_Master.xdc2
288@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2
{C:/Users/Conta/Documents/Github/IMT/CHLS2025/TP_sysc_filter/Filtre_NexysVideo_STUDENT/src/constraints/NexysVideo_Master.xdc2
288@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
sw2
{C:/Users/Conta/Documents/Github/IMT/CHLS2025/TP_sysc_filter/Filtre_NexysVideo_STUDENT/src/constraints/NexysVideo_Master.xdc2
328@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2
{C:/Users/Conta/Documents/Github/IMT/CHLS2025/TP_sysc_filter/Filtre_NexysVideo_STUDENT/src/constraints/NexysVideo_Master.xdc2
328@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
sw32
{C:/Users/Conta/Documents/Github/IMT/CHLS2025/TP_sysc_filter/Filtre_NexysVideo_STUDENT/src/constraints/NexysVideo_Master.xdc2
358@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2
{C:/Users/Conta/Documents/Github/IMT/CHLS2025/TP_sysc_filter/Filtre_NexysVideo_STUDENT/src/constraints/NexysVideo_Master.xdc2
358@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
sw42
{C:/Users/Conta/Documents/Github/IMT/CHLS2025/TP_sysc_filter/Filtre_NexysVideo_STUDENT/src/constraints/NexysVideo_Master.xdc2
368@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2
{C:/Users/Conta/Documents/Github/IMT/CHLS2025/TP_sysc_filter/Filtre_NexysVideo_STUDENT/src/constraints/NexysVideo_Master.xdc2
368@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
sw52
{C:/Users/Conta/Documents/Github/IMT/CHLS2025/TP_sysc_filter/Filtre_NexysVideo_STUDENT/src/constraints/NexysVideo_Master.xdc2
378@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2
{C:/Users/Conta/Documents/Github/IMT/CHLS2025/TP_sysc_filter/Filtre_NexysVideo_STUDENT/src/constraints/NexysVideo_Master.xdc2
378@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
sw62
{C:/Users/Conta/Documents/Github/IMT/CHLS2025/TP_sysc_filter/Filtre_NexysVideo_STUDENT/src/constraints/NexysVideo_Master.xdc2
388@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2
{C:/Users/Conta/Documents/Github/IMT/CHLS2025/TP_sysc_filter/Filtre_NexysVideo_STUDENT/src/constraints/NexysVideo_Master.xdc2
388@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
sw72
{C:/Users/Conta/Documents/Github/IMT/CHLS2025/TP_sysc_filter/Filtre_NexysVideo_STUDENT/src/constraints/NexysVideo_Master.xdc2
398@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2
{C:/Users/Conta/Documents/Github/IMT/CHLS2025/TP_sysc_filter/Filtre_NexysVideo_STUDENT/src/constraints/NexysVideo_Master.xdc2
398@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
ac_adc_sdata2
{C:/Users/Conta/Documents/Github/IMT/CHLS2025/TP_sysc_filter/Filtre_NexysVideo_STUDENT/src/constraints/NexysVideo_Master.xdc2
918@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2
{C:/Users/Conta/Documents/Github/IMT/CHLS2025/TP_sysc_filter/Filtre_NexysVideo_STUDENT/src/constraints/NexysVideo_Master.xdc2
918@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2	
ac_bclk2
{C:/Users/Conta/Documents/Github/IMT/CHLS2025/TP_sysc_filter/Filtre_NexysVideo_STUDENT/src/constraints/NexysVideo_Master.xdc2
928@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2
{C:/Users/Conta/Documents/Github/IMT/CHLS2025/TP_sysc_filter/Filtre_NexysVideo_STUDENT/src/constraints/NexysVideo_Master.xdc2
928@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
ac_dac_sdata2
{C:/Users/Conta/Documents/Github/IMT/CHLS2025/TP_sysc_filter/Filtre_NexysVideo_STUDENT/src/constraints/NexysVideo_Master.xdc2
938@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2
{C:/Users/Conta/Documents/Github/IMT/CHLS2025/TP_sysc_filter/Filtre_NexysVideo_STUDENT/src/constraints/NexysVideo_Master.xdc2
938@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2

ac_lrclk2
{C:/Users/Conta/Documents/Github/IMT/CHLS2025/TP_sysc_filter/Filtre_NexysVideo_STUDENT/src/constraints/NexysVideo_Master.xdc2
948@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2
{C:/Users/Conta/Documents/Github/IMT/CHLS2025/TP_sysc_filter/Filtre_NexysVideo_STUDENT/src/constraints/NexysVideo_Master.xdc2
948@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2	
ac_mclk2
{C:/Users/Conta/Documents/Github/IMT/CHLS2025/TP_sysc_filter/Filtre_NexysVideo_STUDENT/src/constraints/NexysVideo_Master.xdc2
958@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2
{C:/Users/Conta/Documents/Github/IMT/CHLS2025/TP_sysc_filter/Filtre_NexysVideo_STUDENT/src/constraints/NexysVideo_Master.xdc2
958@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
scl2
{C:/Users/Conta/Documents/Github/IMT/CHLS2025/TP_sysc_filter/Filtre_NexysVideo_STUDENT/src/constraints/NexysVideo_Master.xdc2
2028@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2
{C:/Users/Conta/Documents/Github/IMT/CHLS2025/TP_sysc_filter/Filtre_NexysVideo_STUDENT/src/constraints/NexysVideo_Master.xdc2
2028@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
sda2
{C:/Users/Conta/Documents/Github/IMT/CHLS2025/TP_sysc_filter/Filtre_NexysVideo_STUDENT/src/constraints/NexysVideo_Master.xdc2
2038@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2
{C:/Users/Conta/Documents/Github/IMT/CHLS2025/TP_sysc_filter/Filtre_NexysVideo_STUDENT/src/constraints/NexysVideo_Master.xdc2
2038@Z17-55h px�
�
Finished Parsing XDC File [%s]
178*designutils2
{C:/Users/Conta/Documents/Github/IMT/CHLS2025/TP_sysc_filter/Filtre_NexysVideo_STUDENT/src/constraints/NexysVideo_Master.xdc8Z20-178h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1259.7812
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
 Constraint Validation Runtime : 2

00:00:002
00:00:00.0042

1259.7812
0.000Z17-268h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:09 ; elapsed = 00:00:10 . Memory (MB): peak = 1259.781 ; gain = 646.441
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Loading part: xc7a200tsbg484-1
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:09 ; elapsed = 00:00:10 . Memory (MB): peak = 1259.781 ; gain = 646.441
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
%s
*synth20
.Start Applying 'set_property' XDC Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:09 ; elapsed = 00:00:10 . Memory (MB): peak = 1259.781 ; gain = 646.441
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:09 ; elapsed = 00:00:10 . Memory (MB): peak = 1259.781 ; gain = 646.441
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
(
%s
*synth2
+---Adders : 
h p
x
� 
F
%s
*synth2.
,	   3 Input   52 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   30 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    4 Bit       Adders := 1     
h p
x
� 
+
%s
*synth2
+---Registers : 
h p
x
� 
H
%s
*synth20
.	               52 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	               48 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	               24 Bit    Registers := 16    
h p
x
� 
H
%s
*synth20
.	               22 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	               18 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	                7 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	                3 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                1 Bit    Registers := 15    
h p
x
� 
'
%s
*synth2
+---Muxes : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   52 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input   22 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit        Muxes := 5     
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
s
%s
*synth2[
YPart Resources:
DSPs: 740 (col length:100)
BRAMs: 730 (col length: RAMB18 100 RAMB36 50)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2
MAC_1_mul_itm_1_reg2
482
312j
fC:/Users/Conta/Documents/Github/IMT/CHLS2025/TP_sysc_filter/Filtre_NexysVideo_STUDENT/src/hdl/rtl.vhdl2
2848@Z8-3936h px� 
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2
MAC_1_mul_itm_1_reg2
482
172j
fC:/Users/Conta/Documents/Github/IMT/CHLS2025/TP_sysc_filter/Filtre_NexysVideo_STUDENT/src/hdl/rtl.vhdl2
2848@Z8-3936h px� 
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2
MAC_2_mul_itm_1_reg2
482
312j
fC:/Users/Conta/Documents/Github/IMT/CHLS2025/TP_sysc_filter/Filtre_NexysVideo_STUDENT/src/hdl/rtl.vhdl2
2848@Z8-3936h px� 
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2
MAC_2_mul_itm_1_reg2
482
172j
fC:/Users/Conta/Documents/Github/IMT/CHLS2025/TP_sysc_filter/Filtre_NexysVideo_STUDENT/src/hdl/rtl.vhdl2
2848@Z8-3936h px� 
W
%s
*synth2?
=DSP Report: Generating DSP multOp, operation Mode is: A2*B2.
h p
x
� 
S
%s
*synth2;
9DSP Report: register multOp is absorbed into DSP multOp.
h p
x
� 
b
%s
*synth2J
HDSP Report: register MAC_mux1h_2_itm_1_reg is absorbed into DSP multOp.
h p
x
� 
S
%s
*synth2;
9DSP Report: operator multOp is absorbed into DSP multOp.
h p
x
� 
S
%s
*synth2;
9DSP Report: operator multOp is absorbed into DSP multOp.
h p
x
� 
o
%s
*synth2W
UDSP Report: Generating DSP MAC_1_mul_itm_1_reg, operation Mode is: (PCIN>>17)+A2*B2.
h p
x
� 
o
%s
*synth2W
UDSP Report: register MAC_mux1h_1_itm_1_reg is absorbed into DSP MAC_1_mul_itm_1_reg.
h p
x
� 
o
%s
*synth2W
UDSP Report: register MAC_mux1h_2_itm_1_reg is absorbed into DSP MAC_1_mul_itm_1_reg.
h p
x
� 
m
%s
*synth2U
SDSP Report: register MAC_1_mul_itm_1_reg is absorbed into DSP MAC_1_mul_itm_1_reg.
h p
x
� 
`
%s
*synth2H
FDSP Report: operator multOp is absorbed into DSP MAC_1_mul_itm_1_reg.
h p
x
� 
`
%s
*synth2H
FDSP Report: operator multOp is absorbed into DSP MAC_1_mul_itm_1_reg.
h p
x
� 
W
%s
*synth2?
=DSP Report: Generating DSP multOp, operation Mode is: A2*B2.
h p
x
� 
S
%s
*synth2;
9DSP Report: register multOp is absorbed into DSP multOp.
h p
x
� 
b
%s
*synth2J
HDSP Report: register MAC_mux1h_3_itm_1_reg is absorbed into DSP multOp.
h p
x
� 
S
%s
*synth2;
9DSP Report: operator multOp is absorbed into DSP multOp.
h p
x
� 
S
%s
*synth2;
9DSP Report: operator multOp is absorbed into DSP multOp.
h p
x
� 
o
%s
*synth2W
UDSP Report: Generating DSP MAC_2_mul_itm_1_reg, operation Mode is: (PCIN>>17)+A2*B2.
h p
x
� 
m
%s
*synth2U
SDSP Report: register MAC_mux1h_itm_1_reg is absorbed into DSP MAC_2_mul_itm_1_reg.
h p
x
� 
o
%s
*synth2W
UDSP Report: register MAC_mux1h_3_itm_1_reg is absorbed into DSP MAC_2_mul_itm_1_reg.
h p
x
� 
m
%s
*synth2U
SDSP Report: register MAC_2_mul_itm_1_reg is absorbed into DSP MAC_2_mul_itm_1_reg.
h p
x
� 
`
%s
*synth2H
FDSP Report: operator multOp is absorbed into DSP MAC_2_mul_itm_1_reg.
h p
x
� 
`
%s
*synth2H
FDSP Report: operator multOp is absorbed into DSP MAC_2_mul_itm_1_reg.
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:12 ; elapsed = 00:00:13 . Memory (MB): peak = 1303.484 ; gain = 690.145
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
T
%s
*synth2<
: Sort Area is  multOp_0 : 0 0 : 3342 4436 : Used 1 time 0
h p
x
� 
T
%s
*synth2<
: Sort Area is  multOp_0 : 0 1 : 1094 4436 : Used 1 time 0
h p
x
� 
T
%s
*synth2<
: Sort Area is  multOp_3 : 0 0 : 3342 4436 : Used 1 time 0
h p
x
� 
T
%s
*synth2<
: Sort Area is  multOp_3 : 0 1 : 1094 4436 : Used 1 time 0
h p
x
� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
v
%s*synth2^
\
DSP: Preliminary Mapping Report (see note below. The ' indicates corresponding REG is set)
h px� 
�
%s*synth2�
�+---------------------+------------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
h px� 
�
%s*synth2�
�|Module Name          | DSP Mapping      | A Size | B Size | C Size | D Size | P Size | AREG | BREG | CREG | DREG | ADREG | MREG | PREG | 
h px� 
�
%s*synth2�
�+---------------------+------------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
h px� 
�
%s*synth2�
�|top_level_FIR_FILTER | A2*B2            | 24     | 18     | -      | -      | 48     | 1    | 1    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|top_level_FIR_FILTER | (PCIN>>17)+A2*B2 | 24     | 7      | -      | -      | 31     | 1    | 1    | -    | -    | -     | 0    | 1    | 
h px� 
�
%s*synth2�
�|top_level_FIR_FILTER | A2*B2            | 24     | 18     | -      | -      | 48     | 1    | 1    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|top_level_FIR_FILTER | (PCIN>>17)+A2*B2 | 24     | 7      | -      | -      | 31     | 1    | 1    | -    | -    | -     | 0    | 1    | 
h px� 
�
%s*synth2�
�+---------------------+------------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+

h px� 
�
%s*synth2�
�Note: The table above is a preliminary report that shows the DSPs inferred at the current stage of the synthesis flow. Some DSP may be reimplemented as non DSP primitives later in the synthesis flow. Multiple instantiated DSPs are reported only once.
h px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
@
%s
*synth2(
&Start Applying XDC Timing Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:17 ; elapsed = 00:00:18 . Memory (MB): peak = 1438.207 ; gain = 824.867
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2
}Finished Timing Optimization : Time (s): cpu = 00:00:17 ; elapsed = 00:00:18 . Memory (MB): peak = 1439.250 ; gain = 825.910
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2~
|Finished Technology Mapping : Time (s): cpu = 00:00:17 ; elapsed = 00:00:18 . Memory (MB): peak = 1464.965 ; gain = 851.625
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
V
%s
*synth2>
<WARNING: synth_design option "-fanout_limit" is deprecated.
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2y
wFinished IO Insertion : Time (s): cpu = 00:00:20 ; elapsed = 00:00:21 . Memory (MB): peak = 1663.941 ; gain = 1050.602
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:20 ; elapsed = 00:00:21 . Memory (MB): peak = 1663.941 ; gain = 1050.602
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:20 ; elapsed = 00:00:21 . Memory (MB): peak = 1663.941 ; gain = 1050.602
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:20 ; elapsed = 00:00:21 . Memory (MB): peak = 1663.941 ; gain = 1050.602
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:20 ; elapsed = 00:00:21 . Memory (MB): peak = 1663.941 ; gain = 1050.602
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:20 ; elapsed = 00:00:21 . Memory (MB): peak = 1663.941 ; gain = 1050.602
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
W
%s
*synth2?
=
DSP Final Report (the ' indicates corresponding REG is set)
h p
x
� 
�
%s
*synth2�
�+---------------------+-------------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
h p
x
� 
�
%s
*synth2�
�|Module Name          | DSP Mapping       | A Size | B Size | C Size | D Size | P Size | AREG | BREG | CREG | DREG | ADREG | MREG | PREG | 
h p
x
� 
�
%s
*synth2�
�+---------------------+-------------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
h p
x
� 
�
%s
*synth2�
�|top_level_FIR_FILTER | A'*B'             | 30     | 17     | -      | -      | 48     | 1    | 1    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2�
�|top_level_FIR_FILTER | (PCIN>>17+A'*B')' | 30     | 18     | -      | -      | 31     | 1    | 1    | -    | -    | -     | 0    | 1    | 
h p
x
� 
�
%s
*synth2�
�|top_level_FIR_FILTER | A'*B'             | 30     | 17     | -      | -      | 48     | 1    | 1    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2�
�|top_level_FIR_FILTER | (PCIN>>17+A'*B')' | 30     | 18     | -      | -      | 31     | 1    | 1    | -    | -    | -     | 0    | 1    | 
h p
x
� 
�
%s
*synth2�
�+---------------------+-------------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+

h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
| |BlackBox name |Instances |
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
3
%s*synth2
+------+--------+------+
h px� 
3
%s*synth2
|      |Cell    |Count |
h px� 
3
%s*synth2
+------+--------+------+
h px� 
3
%s*synth2
|1     |BUFG    |     1|
h px� 
3
%s*synth2
|2     |CARRY4  |    21|
h px� 
3
%s*synth2
|3     |DSP48E1 |     4|
h px� 
3
%s*synth2
|5     |LUT1    |     1|
h px� 
3
%s*synth2
|6     |LUT2    |     7|
h px� 
3
%s*synth2
|7     |LUT3    |    74|
h px� 
3
%s*synth2
|8     |LUT4    |    57|
h px� 
3
%s*synth2
|9     |LUT5    |    12|
h px� 
3
%s*synth2
|10    |LUT6    |   393|
h px� 
3
%s*synth2
|11    |FDRE    |   537|
h px� 
3
%s*synth2
|12    |FDSE    |    25|
h px� 
3
%s*synth2
|13    |IBUF    |   411|
h px� 
3
%s*synth2
|14    |OBUF    |    25|
h px� 
3
%s*synth2
+------+--------+------+
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:20 ; elapsed = 00:00:21 . Memory (MB): peak = 1663.941 ; gain = 1050.602
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
`
%s
*synth2H
FSynthesis finished with 0 errors, 0 critical warnings and 5 warnings.
h p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:15 ; elapsed = 00:00:19 . Memory (MB): peak = 1663.941 ; gain = 980.488
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:20 ; elapsed = 00:00:21 . Memory (MB): peak = 1663.941 ; gain = 1050.602
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0062

1665.6682
0.000Z17-268h px� 
T
-Analyzing %s Unisim elements for replacement
17*netlist2
25Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
�
�Netlist '%s' is not ideal for floorplanning, since the cellview '%s' contains a large number of primitives.  Please consider enabling hierarchy in synthesis if you want to do floorplanning.
310*netlist2
top_level_FIR_FILTER2
top_level_FIR_FILTERZ29-101h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1671.9382
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

a44f1388Z4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
182
332
252
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
synth_design: 2

00:00:222

00:00:252

1671.9382

1303.828Z17-268h px� 
c
%s6*runtcl2G
ESynthesis results are not added to the cache due to CRITICAL_WARNING
h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0032

1671.9382
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2�
�C:/Users/Conta/Documents/GitHub/IMT/CHLS2025/TP_sysc_filter/Filtre_NexysVideo_STUDENT/proj/AudioProc.runs/synth_1/top_level_FIR_FILTER.dcpZ17-1381h px� 
�
Executing command : %s
56330*	planAhead2s
qreport_utilization -file top_level_FIR_FILTER_utilization_synth.rpt -pb top_level_FIR_FILTER_utilization_synth.pbZ12-24828h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Sun Feb 16 17:29:25 2025Z17-206h px� 


End Record