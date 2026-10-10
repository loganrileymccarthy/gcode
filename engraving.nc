%
O99002 (Engrave)
(General purpose engraving program)
(Adjust parameters in program below)
(LM 2025)

G00 G17 G40 G49 G50 G69 G80 G90

(1. SET TOOL NUMBER: )
T08 M06

(2. SET WORK ZONE: )
(3. SET LOWER LEFT CORNER OF TEXT: )
G00 G90 G54 X2. Y-1.

(4. RPM: )
S8000 M03

(5. SET H TO MATCH TOOL NUMBER: )
G43 Z0.05 H22 M08

(6. SET ENGRAVING PARAMETERS: )
G47 E3. F6. I0. J0.125 P0 R0.05 Z-0.004 (ENGRAVE TEST 0.125)
(D - Smoothness level - D1 rough D2 medium D3 finish - default D3)
(E - Plunge feed rate - units/min)
(F - Feed rate - units/min)
(I - Angle of rotation -360. to +360. - default 0)
(K - Sets the max corner rounding value - default 0.002)
(J - Height of text - minimum 0.001 - default 1.0)
(P - 0 for text - 1 for sequential serial - 32-126 for ASCII characters)
(R - Return plane)
(Z - Depth of cut)
(COMMENT - Desired text)

G00 Z0.05
M09
M05
G00 G90 G53 Z0 
G00 G90 G53 X-15. Y0

M30
%