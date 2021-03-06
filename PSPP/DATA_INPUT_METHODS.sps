/* MANUAL INPUT
----------------------

DATA LIST FREE /V1 (A4) V2 V3 (F4).
BEGIN DATA. 
AAAA 12 23
BBBB 13 23
CCCC 23 43
DDDD 43 23
END DATA. 

/* INPUT THROUGH LOOPS
-----------------------------

INPUT PROGRAM. 
VECTOR X. 
LOOP #I = 1 TO 10.  
COMPUTE X = ABS(RV.UNIFORM(0, 4)). 
END CASE. 
END LOOP. 
END FILE. 
END INPUT PROGRAM. 
EXECUTE.

/* MATRIX THROUGH LOOPS

INPUT PROGRAM. 
LOOP #I = 1 TO 100. 
VECTOR X(10). 
LOOP #J = 1 TO 10. 
COMPUTE X(#J) = ABS(RV.NORMAL(0, 1)). 
END LOOP. 
END CASE. 
END LOOP. 
END FILE. 
END INPUT PROGRAM. 
EXECUTE. 

/* CODING DATA VARIABLES

IF X1 >= 0 & X1 <= 1  
X1 VALUE LABEL = "0 TO 1". 
EXECUTE. 


FREQ /VARIABLES = X1
