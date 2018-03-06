--simple factorial function using case of
factorial :: (Eq p, Num p) => p -> p
factorial n = case n of 0 -> 1
                        n -> factorial (n - 1) * n
