compute income1 = abs(rv.normal(0, 1)*100), 0).
execute.

save translate outfile "f:\windows\work\spss\test1"
/type = xlsx
/sheet = name "Sheet1"
execute.

DATA LIST FREE /
  name (A14)  x test1 test2 test3.
BEGIN DATA.
"John Smith"      4.2 86.5 84.55  81
"Samuel Adams"    9.0  -99 82.37 -99
"Ben Johnson"    -6.2 82.1 84.81  87
"Chris Adraktas"  9.5 94.2   -99  93
"John Brown"     -999 79.7 79.07  72
END DATA.

LIST.    


delete variables name x test1 test2 test3.

new file.

input program.
loop id =1 to 10.
compute x1 = rv.normal(0, 1)*100.
compute x2 = rv.normal(0, 1)*10.
end case.
end loop.
end file.
end input program.
execute. 

dataset activate dataset1.

new file. 
input program. 
dataset name mydf.
loop id = 1 to 20.
compute x1 = rv.normal(0, 1).
compute x2 = rv.normal(0, 1).
end case.
end loop. 
end file.
end input program. 
execute. 

dataset close mydf. 

save translate outfile = "f:\Windows\work\spss\test3.xlsx"
/type = xls.

delete variables max.
