module Data.List.MyLength (myLength) where

myLength :: [a] -> Int
myLength xs = f xs 0
  where
    f [x] n = n + 1
    f (x:xs) n = f xs (n + 1)
