module Prototypes where

import Data.Set (Set)

data Enumerability = Countable
   | Mass
   | Indefinite

data Flavour = Open
   | Mid

data Receiver = Single
   | Multiple
   | Global

data Valency = Zero
   | One
   | Two

data Protoype = Noun
   { enumerability :: Enumerability
   , ownable       :: Bool
   , flavour       :: Flavour
   , stem          :: String
   , glossTerm     :: String
   , meaning       :: String
   , rootStems     :: Set String
   }
   | Verb
   { receiver         :: Receiver
   , valency          :: Valency
   , instantaneous    :: Bool
   , integral         :: Bool
   , creation         :: Bool
   , stem             :: String
   , meaning          :: String
   , rootStems        :: String
   , argumentMeanings :: List String
   }
