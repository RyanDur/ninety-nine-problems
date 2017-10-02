module Data.List.MyLengthSpec (main, spec) where

import Test.Hspec
import Test.QuickCheck

import Data.List.MyLength

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "myLength" $ do
    it "should find the number of elements of a list" $ do
      myLength [123, 456, 789] `shouldBe` 3
    it "should Find the number of elements of a string" $ do
      myLength "hello, world!" `shouldBe` 13
