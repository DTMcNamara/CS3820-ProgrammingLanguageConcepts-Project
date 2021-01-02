module Transform where

import Bracket
import Data.Tree

{- This function is to change representation from a Bracket, which is structured as a tree,
   into a FlatBracket, which is just a list of FlatGames.

   You may assume that the input Bracket has no Unknown Outcomes.

   You may assume this is a full 6-level bracket.  -}  
flattenBracket :: Bracket -> FlatBracket
flattenBracket = undefined

{- build a binary tree where each node is labeled by the team the Bracket
   said won that game, or Nothing if the Bracket labeled that game as Unknown -}
bracketToTree :: Bracket -> Tree (Maybe Team)
bracketToTree = undefined

