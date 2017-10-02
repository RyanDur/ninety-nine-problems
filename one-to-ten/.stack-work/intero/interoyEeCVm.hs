module Data.List.MyReverseSpec (main, spec) where

import Test.Hspec
import Test.QuickCheck

import Data.List.MyReverse

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "myReverse" $ do
    it "should reverse a string" $ do
       myReverse "A man, a plan, a canal, panama!" `shouldBe` "!amanap ,lanac a ,nalp a ,nam A"
    it "should reverse a list" $ do
      myReverse [1,2,3,4] `shouldBe` [4,3,2,1]
