new file. 
input program. 
loop #i = 1 to 30.
vector x(10). 
loop #j = 1 to 10. 
compute x(#j) = trunc(rv.uniform(1, 6)). 
end loop. 
end cases. 
end loop. 
end file. 
end input program. 
execute. 

compute age = abs(trunc(rv.normal(0, 1)*10)). 
execute.
