-- BST

data Tree = Empty | TreeTop Int Tree Tree
data Maybe a = Nothing | Just a

findMax :: Tree -> Maybe Int
findMax Empty = Nothing
findMax (TreeTop x t1 t2) = max (Just x) (max (findMax t1) (findMax t2))

data BTree = Empty | BNode BTree Int BTree
findMaxB :: BTree -> Maybe Int
findMaxB Empty = Nothing
findMaxB (BNode bt1 x bt2) = max (Just x) (max (findMaxB bt1) (findMaxB bt2))