module Main
  ( main
  ) where

import           System.Environment
import           System.Random

rand :: [a] -> IO a
rand xs = do
  i <- fst . randomR (0, length xs - 1) <$> getStdGen
  return $ xs !! i

orStdIn :: [String] -> IO [String]
orStdIn [] = lines <$> getContents
orStdIn x  = return x

main :: IO ()
main = getArgs >>= orStdIn >>= rand >>= putStrLn
