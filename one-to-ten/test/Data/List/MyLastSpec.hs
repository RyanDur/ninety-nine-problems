module Data.List.MyLastSpec (main, spec) where

import Test.Hspec
import Test.QuickCheck

import Data.List.MyLast

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "myLast" $ do
    it "should find the last int of a list of ints" $ do
      myLast [1,2,3,4] `shouldBe` 4
    it "should find the last char of a list of chars" $ do
      myLast ['x','y','z'] `shouldBe` 'z'
