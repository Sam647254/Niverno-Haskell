module SentenceSpec where

import Test.Hspec

import Parser
import Syntax
import TestingDictionary

spec :: Spec
spec = do
   describe "PlainSentence" $ do
      it "can be correctly parsed" $ do
         let parts = [aPerson, eatImp, anApple]
         let parsedSentence = PlainSentence {
              receiver = Just (plainArgument aPerson)
            , predicate = plainPredicate eatImp
            , argument1 = Just (plainArgument anApple)
            , argument2 = Nothing
            }
         parseSentence parts `shouldBe` Right parsedSentence
