compute age2 = age1*10.
execute.

delete variables age2.
delete variables age.

* to make data set

data  list list

/ make mpg weight price.
begin data.
"a", 12, 23, 21
"b", 21, 23, 32
"c". 21, 12, 34
"d", 32, 21, 32
end data.
list.
