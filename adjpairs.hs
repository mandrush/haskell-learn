--adjpairs - a function which takes all the elements in a list
--           and makes them into a list of tuples of adjacent elements
adjpairs :: [b] -> [(b, b)]
adjpairs (x:xs) = if length xs == 0 then []
                    else [(x, head xs)] ++ adjpairs xs
adjpairs [] = []
