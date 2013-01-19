-- fibs is the infinite list of Fibonacci's numbers.
-- foldl1' is something I need to look at more; I have no real idea what it does,
-- just recommended at #haskell.

-- Solves the Euler #2

import Data.List

fibs = 0 : 1 : zipWith (+) fibs (tail fibs)
sumEvenFibsNotOver n = foldl1' (+) . takeWhile (<=n) . filter even $ fibs