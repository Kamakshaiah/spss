new file.
input program.
loop #i=1 to 100.
vector x(10).
loop #j=1 to 10.
compute x(#j)=trunc(rv.uniform(1,5)).
end loop.
end case.
end loop.
end file.
end input program.
execute.


RECODE x1 (1= "High") (2= "Satis") (3= "Ind") (4="Distatis") (5 = "High Distis"). 
VARIABLE LABELS " Satisfaction". 
EXECUTE.

DO IF(MISSING(x1)).
COMPUTE satis1=$SYSMIS.
ELSE IF (x1 = 1).
COMPUTE satis1 = "High".
ELSE IF (x1 = 2).
COMPUTE satis1 = "Satis".
ELSE IF (x1 = 3).
COMPUTE satis1 = "Ind".
ELSE IF (x1 = 4).
COMPUTE satis1 = "Disatis".
ELSE IF (x1 = 5).
COMPUTE satis1 = "HighDistis".
END IF.
EXECUTE.