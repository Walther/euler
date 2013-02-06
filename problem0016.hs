-- powerdigitsum takes two arguments - base and power - and returns the sum of digits
-- in the result number base^power. Solution to Euler #16.

powerdigitsum n m = sumOfDigits (n^m)
    where 
        sumOfDigits 0 = 0
        sumOfDigits x = (x `mod` 10) + sumOfDigits (x `div` 10)