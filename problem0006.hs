-- sumSquareDiff outputs the difference between the square of the sum of all integers
-- from 1 to n, and the sum of the squares of integers between 1 to n. Euler #6

sumSquareDiff n = (sumSqu n) - (squSum n)
	where
		sumSqu n = (sum [1..n])^2
		squSum n = sum $ map (^2) [1..n]