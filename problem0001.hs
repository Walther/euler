-- Find the sum of all the multiples of 3 or 5 below 1000.

main = do
  print $ sumMultiples 3 5 1000

-- sumMultiples takes three arguments a b c,
-- returns the sum of all integers < c,
-- that are multiples of a or b.

sumMultiples a b c = sum [x | x <- [(min a b)..(c-1)],
                         (x `mod` a == 0) || (x `mod` b == 0)]
