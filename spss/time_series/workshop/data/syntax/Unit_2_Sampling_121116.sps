new file.
input program. 
loop #i = 1 to 30.
compute x = abs(rv.normal(0, 1)*100).
end cases. 
end loop.
end file.
end input program.
execute. 
list.

* Computing sample and replacing existing data set. The resultant sample is continous

dataset copy x_new. 
dataset activate x_new.
use all. 
filter off.
use all.
sample .20.
execute.

* Ordinal

use all.
filter filter_$ = (uniform(1) <=.20).
filter by filter_$.
execute. 


