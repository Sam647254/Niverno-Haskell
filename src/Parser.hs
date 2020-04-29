module Parser where

import Syntax
import qualified Syntax as S

parseSentence :: [S.Word] -> Either String Sentence
parseSentence _ = Left "Not implemented"
