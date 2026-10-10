%
O00001 (Measure Tool)
(2026-05-07 - LM)

( MEASURES TOOL IF LENGTH SET TO 10.0 )

( MACRO VARIABLES: )
( T: Tool number )
( A: Measurement type, 1=center, 2=edge)

T#20 M06

IF [#[2000 + #20] NE 10.0] GOTO98 (already set)
IF [#1 EQ 1] GOTO1 (simple)
IF [#1 EQ 2] GOTO2 (edge)
GOTO99 (type not given)

N1 (LENGTH, SIMPLE)
(A0 Auto measure)
(B1 Drill style)
(C2 Length, non-rotating)
M0
(BLOW OFF PROBE)
G65 P9995 A0. B1. C2. T#20 E5. D0.1
M99

N2 (LENGTH, EDGE)
(A0 Auto measure)
(B4 End mill style)
(C1 Length, rotating)
M0
(BLOW OFF PROBE, CHECK APPROX. LENGTH)
G65 P9995 A0. B4. C1. T#20 E#[51800 + #20] D#[3200 + #20]
M99

N98 (LENGTH ALREADY SET)
M99

N99
#3000 = 1 (INCORRECT PARAMETERS)
M99
%