module Data.List.IsPalindromeSpec (main, spec) where

import Test.Hspec
import Test.QuickCheck

import Data.List.IsPalindrome

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "isPalindrome" $ do
    it "should know if a list of ints is not a palidrome" $ do
      isPalindrome [1,2,3] `shouldBe` False
    it "should know if a list of ints is a palidrome" $ do
      isPalindrome [1,2,4,8,16,8,4,2,1] `shouldBe` True
    it "should work for strings" $ do
      isPalindrome "madamimadam" `shouldBe` True
