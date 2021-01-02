{
module Grammar where
import Tokens
import Bracket
}

%name parseBracket
%tokentype { Token }
%error { parseError }

%token
    team { TokenTeam $$ }
    seed { TokenSeed $$ }
    '+' { TokenFirstWins }
    '-' { TokenSecondWins }
    '?' { TokenUnknown }
    '(' { TokenLParen }
    ')' { TokenRParen }

%%

Bracket :: { Bracket } 
   
-- productions:
: '(' seed team ')'      { Competitor (SeededTeam $2 $3) }
| '(' outcome Bracket Bracket ')' { Game $2 $3 $4 }

outcome :: { Outcome }
: '+' { LeftWins }
| '-' { RightWins }
| '?' { Unknown }

{

parseError :: [Token] -> a
parseError tks = error ("Parse error: " ++ show tks)

}
