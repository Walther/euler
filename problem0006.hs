-- Find the difference between the sum of the squares of the first one hundred
-- natural numbers and the square of the sum.

main = do
  print $ sumSquareDiff 100

sumSquareDiff n = (sumSqu n) - (squSum n)
    where
        sumSqu n = (sum [1..n])^2
        squSum n = sum $ map (^2) [1..n]
