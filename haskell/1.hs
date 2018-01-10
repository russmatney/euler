module Euler1 where

import Data.Sequence

main :: IO ()
main = do
  mapM_ putStrLn $ fizzbuzz 31

numbers length =
  fromFunction length (+1)

fizzbuzz length =
  fmap fizz $ numbers length

fizz n | mod n 15 == 0 = "FizzBuzz"
       | mod n 5 == 0  = "Buzz"
       | mod n 3 == 0  = "Fizz"
       | otherwise     = show n

