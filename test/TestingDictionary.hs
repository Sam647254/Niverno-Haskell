module TestingDictionary where

import Data.Set
import Derivations
import Prototypes
import qualified Prototypes as P
import Syntax
import qualified Syntax as S

apple :: Prototype
apple = Noun
   { enumerability = Countable
   , associability = Associable
   , flavour = Open
   , stem = "lep"
   , glossTerm = "apple"
   , meaning = "apple"
   , rootStems = empty
   }

eat :: Prototype
eat = Verb
   { P.receiver = Single
   , valency = One
   , instantaneous = True
   , integral = False
   , creation = False
   , stem = "buli"
   , meaning = "eat"
   , rootStems = empty
   , argumentMeanings = ["eater", "something edible"]
   }

person :: Prototype
person = Noun
   { enumerability = Countable
   , associability = Associable
   , flavour = Mid
   , stem = "tat"
   , glossTerm = "person"
   , meaning = "person"
   , rootStems = empty
   }

aPerson :: S.Word
aPerson = S.Word
   { prototype = person
   , derivation = Specific
   }

anApple :: S.Word
anApple = S.Word
   { prototype = apple
   , derivation = Nonspecific
   }

eatImp :: S.Word
eatImp = S.Word
   { prototype = eat
   , derivation = Imperative
   }
