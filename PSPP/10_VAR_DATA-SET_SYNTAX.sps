INPUT PROGRAM. 
LOOP #I = 1 TO 100. 
VECTOR X(10). 
LOOP #J = 1 TO 10. 
COMPUTE X(#J) = TRUNC(RV.UNIFORM(1, 5)). 
END LOOP. 
END CASE. 
END LOOP. 
END FILE. 
END INPUT PROGRAM. 
EXECUTE. 

VALUE LABELS
X1 TO X10
1 "HIGHLY SATISFIED" 
2 "sATISFIED"
3 "INDIFFERENT"
4 "DISSATISFIED"
5 "HIGHLY DISSATISFIED". 
EXECUTE. 