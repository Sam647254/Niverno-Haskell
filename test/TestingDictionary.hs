module TestingDictionary where

import Data.Set
import Prototypes

apple :: Prototype
apple = Noun
   { enumerability = Countable
   , ownable = True
   , flavour = Open
   , stem = "lep"
   , glossTerm = "apple"
   , meaning = "apple"
   , rootStems = empty
   }

eat :: Prototype
eat = Verb
   { receiver = Single
   , valency = One
   , instantaneous = True
   , integral = False
   , creation = False
   , stem = "buli"
   , meaning = "eat"
   , rootStems = empty
   , argumentMeanings = ["eater", "something edible"]
   }
