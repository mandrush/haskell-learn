-- basics: functions
triple x = 3*x
strangeAddition x y = x + triple y
squareTwo x y = (x + y) ^ 2

c = 4

strangeAddition' x y = if x > y
                        then x + triple y
                        else y + triple x

myMax x y = if x >= y
                then x
                else y
