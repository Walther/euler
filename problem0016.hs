-- What is the sum of the digits of the number 2^1000?
main = do
  print $ powerdigitsum 2 1000

powerdigitsum n m = sumOfDigits (n^m)
    where
        sumOfDigits 0 = 0
        sumOfDigits x = (x `mod` 10) + sumOfDigits (x `div` 10)
