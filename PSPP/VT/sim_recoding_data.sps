INPUT PROGRAM. 
LOOP #I = 1 TO 100. 
VECTOR X(10). 
LOOP #J = 1 TO 10. 
COMPUTE X(#J)=TRUNC(RV.UNIFORM(1, 6)). 
END LOOP. 
END CASE. 
END LOOP. 
END FILE. 
END INPUT PROGRAM. 
EXECUTE. 

value labels
X1 to X10
1 "High Satisfied"
2 "Satisfied" 
3 "Indifferent" 
4 "Dissatisfied"
5 "Highly dissatisfied". 
execute. 