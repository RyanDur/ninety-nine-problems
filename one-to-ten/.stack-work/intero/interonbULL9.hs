module Data.List.IsPalindrome (isPalindrome) where

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome [] = True
isPalindrome [x] = True
isPalindrome xs =
  if (head xs) == (last xs)
  then (isPalindrome (init (tail xs)))
  else False
