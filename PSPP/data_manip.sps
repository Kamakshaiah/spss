/* Inputing data
/*----------------------

data list free / V1 (F2.0) V2 (F2.0) V3 (A4).
begin data
1 2 aaaa
3 4 bbbb
5 6 cccc
end data.
dataset name input.

/* simulataion of data

set seed = 10. /* sets random seed generator to make exact data reproducible */.
input program.
loop #j = 1 to 100. /*I typically use scratch variables (i.e. #var) when making loops.
    loop #i = 1 to 100. /*multiple loops allows you to make grouped data.
    compute V1 = RV.NORM(0,1). /*you can use the random number generators to make different types of data.
    compute V2 = RV.UNIFORM(0,1).
    compute V3 = RV.POISSON(3).
    compute V4 = RV.BERNOULLI(.5).
    compute V5 = RV.BINOM(5,.8).
    compute mycat = TRUNC(RV.UNIFORM(0,5)). /*this makes categorical data with 4 groups.
    compute group = #j. /*this assigns the scratch variable #j to an actual variable.
    end case.
    end loop.
end loop.
end file.
end input program.
dataset name sim.
execute. /*note spacing is arbitrary and is intended to make code easier to read.

/* my routine


input program. 
loop #i = 1 to 100. 
VECTOR X(5)
LOOP #J = 1 TO 5. 
compute X(#J) = RV.NORM(0, 1). 
END LOOP. 
end case. 
end loop. 
END FILE. 
end input program. 
execute. 
