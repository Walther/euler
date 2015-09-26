-- By considering the terms in the Fibonacci sequence whose values do not exceed
-- four million, find the sum of the even-valued terms.
import Data.List

main = do
  print $ sumEvenFibsNotOver 4000000

fibs = 0 : 1 : zipWith (+) fibs (tail fibs)
sumEvenFibsNotOver n = sum . takeWhile (<=n) . filter even $ fibs
