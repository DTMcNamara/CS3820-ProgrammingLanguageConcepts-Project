-- functions to assemble brackets
module BracketBuilding where

import Bracket

{- process the ranklist in the file whose name is given as the input to the
   function.  See ranklist2019.txt for the 2019 ranklist.  This is the format
   your code should expect.  Your job is to extract just the team names from
   those lines.

   Hint: functions in Data.List and maybe also Data.List.Split could help
   extract the team-name from each line of the file (dropping the other information).

   The list of teams produced should be in order from highest ranked to lowest.
-}
readRankList :: String -> IO [Team]
readRankList = undefined

{- given a rank list (as obtained from readRankList), in order from highest-ranked
   to lowest-ranked team, construct the lists of seeded teams for the four regions.

   You should follow the following strategy (described on the Wikipedia page for
   the tournament), for which you will probably find it useful to write a helper
   function:

   The top four teams in the rank list become the number 1 seeds in the four
   regions (let us say that they are placed in the regions in the order
   below, which is alphabetical by region name).  Then the next four teams become
   the number 2 seeds in the four regions, and so on.  (We ignore all other
   considerations about determining seeds discussed on the Wikipedia page.)

-}
buildRegions :: [Team] -> ([SeededTeam],[SeededTeam],[SeededTeam],[SeededTeam])
buildRegions = undefined

{- use buildRegions to create the initial Competitors, and then
   combine them into a single Bracket, where all Outcomes should be Unknown.
   The resulting Bracket should satisfy the requirement that a team with seed n
   is paired in the first round of the bracket with a team of seed 17-n (so the 1-seed
   is paired with the 16-seed in the region, the 2-seed with the 15-seed, and so forth).

   The input list of teams is also from highest-ranked to lowest-ranked team.

   While the real brackets for the tournament have the Competitors in a particular order
   at the bottom level of the bracket, we are not requiring this, other than as noted above
   (1 plays 16, 2 plays 15, etc.).
-}
buildBracket :: [Team] -> Bracket
buildBracket = undefined

{- combine above functions to go from the name of a file containing a ranklist
   to a Bracket. -}
bracketFromFile :: String -> IO Bracket
bracketFromFile = undefined

