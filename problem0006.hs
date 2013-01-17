sumSquareDiff n = (sumSqu n) - (squSum n)
	where
		sumSqu n = (sum [1..n])^2
		squSum n = sum $ map (^2) [1..n]