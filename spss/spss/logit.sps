new file. 
input program. 
loop #i = 1 to 30. 
compute outcome = trunc(rv.uniform(0, 2)). 
compute gender = trunc(rv.uniform(1, 3)). 
compute income = abs(trunc(rv.normal(0, 1)*100)). 
end case. 
end loop. 
end file. 
end input program. 
execute. 

value labels outcome 
0 "terminated" 
1 "not terminated". 
execute. 

value labels gender
1 "male" 
2 "female". 
execute. 

descriptives income. 
execute. 

recode income (0 thru 100 = 1) (100 thru 200 = 2) (200 thru 300 = 3). 
execute. 

value labels income
1 "0 to 100"
2 "100 to 200"
3 "200 to 300".
execute. 
