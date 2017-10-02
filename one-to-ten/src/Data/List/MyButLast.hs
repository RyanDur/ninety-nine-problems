module Data.List.MyButLast (myButLast) where

myButLast :: [a] -> a
myButLast [] = error "empty scuzzlebutt"
myButLast [x,_] = x
myButLast (x:xs) = myButLast xs
