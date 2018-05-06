-- insertAt - inserts an element at a given index in a list

insertAt :: (Eq t1, Num t1) => [t2] -> t2 -> t1 -> [t2]
insertAt xs element 0 = element : xs
insertAt (x:xs) element index = x : insertAt xs element (index - 1)
insertAt [] element index = error "The list is empty, cannot insert"
