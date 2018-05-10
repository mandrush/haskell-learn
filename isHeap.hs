-- isHeap - determines whether the given binary tree is a heap 
--			a heap is a tree in which the parent is always higher or greather than any of the children

data Tree = Empty | Node Int Tree Tree

isHeap :: Tree -> Bool
isHeap Empty = True
isHeap (Node _ Empty Empty) = True
isHeap (Node x (Node y t1 t2) Empty) = x >= y && isHeap (Node y t1 t2)
isHeap (Node x Empty (Node y t1 t2)) = x >= y && isHeap (Node y t1 t2)
isHeap (Node x (Node y t1 t2) (Node z t3 t4)) = 
    x >= y && x >= z && isHeap (Node y t1 t2) && isHeap (Node z t3 t4)