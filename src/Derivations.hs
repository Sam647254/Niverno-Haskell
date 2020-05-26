module Derivations where

data Derivation = Nonspecific
   | Specific
   | Imperative
   deriving (Eq, Show)
