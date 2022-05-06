new file. 
input program. 
loop id = 1 to 30. 
compute x1 = abs(trunc(rv.norm(0, 1)*100)). 
compute x2 = abs(trunc(rv.norm(0, 1)*100)). 
end case. 
end loop. 
end file. 
end input program. 
execute. 

value labels x1_new x2_new
1 "0 to 100"
2 "100 to 200"
3 "200 to 300". 
execute. 





