-- basics of lists
-- all lists in haskell are single-linked lists
--- they are also homogenous

numbers = [1, 3, 5, 7, 9, 9, 10, 11]
langs = ["lisp", "haskell", "scala", "java", "c"]
hello = "Hello, world" -- same as ['H', 'e', 'l', 'l', ... ] and so on
listOfLists = [[1, 5, 7, 9], [2, 4, 6], [1]]
emptyList = []

-- : prepend
-- ++ concatenate

--list comprehension basics
--example:

-- [2**x | x <- [1, 3, 4], odd x]

-- left hand side value (2**x) is the value to be evaluated.
-- next, we have a list, from which we extract x (hence the x <- list)
-- afterwards there is a list of predicates, which need to be true
-- if and only if all the predicates are true can the L-value be evaluate
-- NOTE as it says above - a LIST OF PREDICATES. ONLY boolean expressions

myLength = sum [1 | _ <- [3 .. 20]] -- how to calculate the lenght of a list
-- use _ wildcard wherever we don't neet a name for a value
