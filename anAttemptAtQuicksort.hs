-- Quicksort: An Attempt
quicksort :: Ord a => [a] -> [a]
quicksort [] = []
quicksort (x:xs) = less ++ [x] ++ more
  where
    less = quicksort [y | y <- xs, y < x]
    more = quicksort [y | y <- xs, y >= x]
