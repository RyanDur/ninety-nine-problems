module Data.List.MyButLastSpec (main, spec) where

import Test.Hspec
import Test.QuickCheck

import Data.List.MyButLast

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "myButLast" $ do
    it "should find the second to last int of a list of ints" $ do
      myButLast [1,2,3,4] `shouldBe` 3
    it "should find the second to last char of a list of chars" $ do
      myButLast ['x'..'z'] `shouldBe` 'y'
