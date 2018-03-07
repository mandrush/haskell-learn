-- a function which removes duplicate elements standing next to each other
removeDups :: Eq a => [a] -> [a]
removeDups [] = []
removeDups [x] = [x]
removeDups (x:xs) = if x == (head xs) then removeDups xs
  else x : removeDups xs


--a function which removes duplicate elements in the entire list
removeDups' :: Eq a => [a] -> [a]
removeDups' [] = []
removeDups' [x] = [x]
removeDups' (x:xs) = if x `notElem` xs then x : removeDups' xs
  else removeDups' xs
