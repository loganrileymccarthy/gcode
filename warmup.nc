%
O99001 (Spindle Warmup) 
(Run prior to machine use)
(Enable block delete to run continuously)

G0 G17 G20 G40 G49 G80 G90
G0 G53 Z0
G0 G53 X-15.
G0 G53 Y0

S500 M03 
G04 P120. 

S1500 M03 
G04 P120. 

S3000 M03 
G04 P120. 

S6000 M03 
G04 P120. 

S9000 M03 
G04 P120. 

S12000 M03 
G04 P120. 

/ M30 

M99 

%