module Euler1 (main, fizzBuzz) where

import Prelude

-- | print it
main :: IO [()]
main = do
  traverse print fizzBuzz

-- | Fizz'n'Buzz'n'Stuff
fizzBuzz :: [String]
fizzBuzz = do
  x <- [0..15]
  let isFizz = x `mod` 3 == 0
      isBuzz = x `mod` 5 == 0

  case (isFizz, isBuzz) of
    (False, False) -> pure $ show x
    (True, False) -> pure "fizz"
    (False, True) -> pure "buzz"
    (True, True) -> pure "fizzbuzz"
