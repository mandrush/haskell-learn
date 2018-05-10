-- begin -- returns True, if xs is the prefix of ys, False otherwise

begin :: [Int] -> [Int] -> Bool
begin [] _ = True
begin _ [] = False
begin (x:xs) (y:ys) = 
    if x == y then begin xs ys
        else False