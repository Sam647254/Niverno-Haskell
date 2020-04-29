module Syntax where

import Derivations (Derivation)
import Prototypes (Prototype)

data Word = Word
   { prototype  :: Prototype
   , derivation :: Derivation
   }
   deriving (Eq, Show)

data Argument = Argument
   { argumentWord :: Syntax.Word
   , descriptors  :: ()
   }
   deriving (Eq, Show)

data Predicate = Predicate
   { predicateWord :: Syntax.Word
   , modifiers     :: ()
   }
   deriving (Eq, Show)

data Sentence = PlainSentence
   { receiver  :: Maybe Argument
   , predicate :: Predicate
   , argument1 :: Maybe Argument
   , argument2 :: Maybe Argument
   }
   deriving (Eq, Show)

plainArgument :: Syntax.Word -> Argument
plainArgument word = Argument
   { argumentWord = word
   , descriptors = ()
   }

plainPredicate :: Syntax.Word -> Predicate
plainPredicate word = Predicate
   { predicateWord = word
   , modifiers = ()
   }
