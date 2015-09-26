-- Which starting number, under one million, produces the longest Collatz chain?

import Data.List
import Data.Ord

collatz 1 = 1
collatz n
    | even n = div n 2
    | odd  n = 3*n +1

chain :: Integer -> [Integer]
chain x = (takeWhile (>1) $ iterate collatz x) ++ [1]

main = do
  print $ head $ maximumBy (comparing length) $ map chain [1..1000000]
