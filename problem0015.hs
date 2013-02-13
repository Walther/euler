-- Just simply and mathematically, in n*n grid, the combinations are (2n)!/(n!*n!)
-- gridRoutes n calculates amount of optimal paths in a n*n grid. Solution for Euler #15

gridRoutes :: Integer -> Integer
gridRoutes n = facto (2*n) `div` (facto n)^2
    where
        facto 1 = 1
        facto n = n * facto (n-1)