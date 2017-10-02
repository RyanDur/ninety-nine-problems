module Data.List.ElementAt (element_at) where

element_at :: [a] -> Int -> a
element_at (x:xs) 1 = x
element_at (x:xs) n = element_at xs (n - 1)
