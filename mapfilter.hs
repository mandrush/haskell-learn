-- mymap - my own implementation of map function
-- myfilter - my own implementation of filter function
mymap :: (t -> a) -> [t] -> [a]
mymap f xs = [ f x | x <- xs]

myfilter :: (a -> Bool) -> [a] -> [a]
myfilter f xs = [ x | x <- xs, f x]
