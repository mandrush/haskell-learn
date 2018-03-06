--collatz sequence - if a number is odd, multiply by 3 and add
--                   if a number is even, divide by 2
collatz :: Integral a => a -> [a]
collatz 1 = [1]
collatz n
  | even n = n : collatz (n `div` 2)
  | odd n = n :collatz (n*3 + 1)
