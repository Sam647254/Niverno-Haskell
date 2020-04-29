module Derivations where

import qualified Data.Set as Set
import Prototypes

data Derivation = Nonspecific
   | Specific
   | Anaphor
   | Imperative
   deriving (Eq, Show, Ord)

derive :: Prototype -> Set.Set Derivation
derive prototype =
   let prototypes = case prototype of
         Noun { enumerability = e } ->
            case e of
               Countable -> [Nonspecific, Specific, Anaphor]
               _         -> [Specific, Anaphor]
         Verb {}                    -> [Imperative]
   in Set.fromList prototypes
