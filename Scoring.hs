-- function for scoring brackets
module Scoring where

import Bracket

{- a ScoringScheme is a list of points to give for correct answers for each round, ordered from round1 through the
   championship.  -}
type ScoringScheme = [Int]

-- Apparently (from NYTimes) this is the standard scoring scheme
standardScheme :: ScoringScheme
standardScheme = [1,2,4,8,16,32]

-- another popular scheme
stepScheme :: ScoringScheme
stepScheme = [1,2,3,4,5,6]

{- the first bracket gives the outcomes of the games against which to score the second bracket.
   If the second bracket has a different outcome for a game than the first, or if either lists
   the outcome as Unknown, then the second bracket does not get any points for that game.  Otherwise
   it gets the points for the current round given by the score scheme.

   You may assume both brackets are full 6-level brackets.

   You may also assume the Competitors are exactly the same and in the same order in each region.

-}
scoreBracket :: ScoringScheme -> Bracket -> Bracket -> Int
scoreBracket = undefined
