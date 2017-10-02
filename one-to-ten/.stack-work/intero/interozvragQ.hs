module Data.List.ElementAtSpec (main, spec) where

import Test.Hspec
import Test.QuickCheck

import Data.List.ElementAt

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "element_at" $ do
    it "should find the K'th int of a list of ints" $ do
      element_at [1,2,3] 2 `shouldBe` 2
    it "should find the K'th char of a string" $ do
      element_at "haskell" 5 `shouldBe` 'e'
