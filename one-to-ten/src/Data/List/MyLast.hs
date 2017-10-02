module Data.List.MyLast (myLast)  where

myLast :: [a] -> a
myLast [x] = x
myLast (x:xs) = myLast xs
