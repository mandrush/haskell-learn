--string2int - converts a String into a whole number. e.g.
--             string2int "356" yields 356
--             string2int "-341" yields -341
import Data.Char

string2int [] = 0
string2int (x:xs) =
    if x == '-'
        then if isDigit (head xs)
            then (-1) * (digitToInt (head xs)) * 10^(length (tail xs)) - string2int (tail xs)
        else error "Cannot convert such string"
    else
        if isDigit x
            then (digitToInt x) * 10^(length xs) + string2int xs
            else error "Cannot convert such string"
