-- function that returns the middle element of a given list
middle :: [p] -> p
middle (x:xs) = last ( take ( length xs `div` 2) xs )
middle [] = undefined
