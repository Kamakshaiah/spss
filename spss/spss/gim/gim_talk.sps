new file. 
input program. 
loop id = 1 to 20.
compute income1 = abs(rv.normal(0, 1))*100. 
compute income2 = abs(rv.normal(0, 1))*100. 
compute gender = trunc(rv.uniform(1, 3)).
end case.
end loop. 
end file. 
end input program. 
execute. 

recode income1 income2 (0 thru 100 = 1) (100 thru 200 = 2) (200 thru 300 = 3). 

value lables income1 income2
1 "0 to 100"
2 "100 to 200"
3 "200 to 300". 

value labels gender
1 "male"
2 "female".
execute. 

correlations income1 with income2. 
execute. 



