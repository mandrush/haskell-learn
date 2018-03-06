-- recursive max function (determines the maximum element of a list)
recMax :: Ord a => [a] -> a
recMax xs = case xs of [] -> error "There is no max of an empty list"
                       [x] -> x
                       (x:xs) -> max x (recMax xs)
