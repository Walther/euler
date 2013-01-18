-- sumMultiples takes three arguments, a b c, and outputs the sum of all integers
-- under the maximum of c that are multiples of a or b. Solution for Euler #1

sumMultiples a b c = sum [x | x <- [(min a b)..(c-1)], (x `mod` a == 0) || (x `mod` b == 0)]