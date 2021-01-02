{- data structures representing brackets.

   Brackets represent assertions or predictions of who wins which games
   out of the 63 games of the NCAA tournament (this does not count the
   so-called First Four games that were added when the tournament expanded
   the number of automatic qualifiers).

   See https://en.wikipedia.org/wiki/NCAA_Division_I_Men%27s_Basketball_Tournament
   if you want more information about the tournament.
-}

module Bracket where

type Team = String

-- possible outcomes for a game between two teams ("left" and "right" in the tree). 
data Outcome = LeftWins | RightWins | Unknown
  deriving Show

-- the Int is the seed of the team within its region.  
data SeededTeam = SeededTeam Int Team
  deriving Show

{- data structure for brackets.

   Game o b1 b2  -- records that the winners of b1 and b2 competed with the given outcome.
   Competitor c  -- records that c is a competitor in the tournament.

   Assume that in a Bracket that looks like (Game o (Game o' b1 b2) (Game o'' b3 b4)),
   that b1 is the Bracket for the East region, b2 is the Bracket for the Midwest,
   b3 is for the South and b4 is for the West.
-}
data Bracket = Game Outcome Bracket Bracket | Competitor SeededTeam
  deriving Show

{-----------------------------------------------------------------------
  Now we have a different representation of brackets as lists of FlatGames (where a FlatGame
  keeps track of more information than a Game).
 -----------------------------------------------------------------------}

-- the different levels of the bracket tree have names
data RoundName = Round1 | Round2 | RegionalSemis | RegionalFinals | NationalSemis | NationalChampionship
  deriving Show

data Region = East | Midwest | South | West
  deriving Show

data FlatGame = FlatGame Region RoundName Outcome Team Team
data FlatBracket = FlatBracket [FlatGame]

getCompetitors :: Bracket -> [ SeededTeam ]
getCompetitors (Game _ b1 b2) = getCompetitors b1 ++ getCompetitors b2
getCompetitors (Competitor t) = [ t ] 
