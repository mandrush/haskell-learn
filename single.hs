--single - function which takes a list, and creates a list of lists consisting of
--         each one element of the starting list
single :: [a] -> [[a]]
single xs = [ [x] | x <- xs]
