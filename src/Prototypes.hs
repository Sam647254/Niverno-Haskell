module Prototypes where

import Data.Set (Set)

data Enumerability = Countable
   | Mass
   | Indefinite
   deriving (Eq, Show)

data Flavour = Open
   | Mid
   deriving (Eq, Show)

data Receiver = Single
   | Multiple
   | Global
   deriving (Eq, Show)

data Valency = Zero
   | One
   | Two
   deriving (Eq, Show)

data Prototype = Noun
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
   , rootStems        :: Set String
   , argumentMeanings :: [String]
   }
   deriving (Eq, Show)
