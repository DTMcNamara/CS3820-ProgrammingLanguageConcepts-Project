module Main where

import Bracket
import Grammar
import Tokens
import System.Environment

main :: IO ()
main = do
  args <- getArgs
  s <- readFile $ head args
  putStrLn $ show $ parseBracket $ scanTokens s
