{
module Tokens where
}

%wrapper "basic"

$digit = 0-9
$alpha = [a-zA-Z\ ]

tokens :-

  "+"                            { \s -> TokenFirstWins }
  "-"                            { \s -> TokenSecondWins }
  "?"                            { \s -> TokenUnknown }  
  "("                            { \s -> TokenLParen }
  ")"                            { \s -> TokenRParen }
  $alpha+                        { \s -> TokenTeam (dropWhile (' ' ==) s) }
  $digit+                        { \s -> TokenSeed (read s :: Int) }  
  $white+                       ;

{

-- The token type:
data Token = TokenTeam String
           | TokenSeed Int
           | TokenFirstWins
           | TokenSecondWins
           | TokenUnknown
           | TokenLParen
           | TokenRParen
           deriving (Eq,Show)

scanTokens = alexScanTokens

}
