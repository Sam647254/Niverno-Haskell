module PrototypeSpec where

import qualified Data.Set as Set
import Test.Hspec

import Derivations
import TestingDictionary

spec :: Spec
spec = do
   describe "Nouns" $ do
      it "has correct derivations" $ do
         derive person `shouldBe`
            (Set.fromList [Nonspecific, Specific, Anaphor])
