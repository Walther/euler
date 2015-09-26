-- Starting in the top left corner of a 2×2 grid, and only being able to move to
-- the right and down, there are exactly 6 routes to the bottom right corner.
-- How many such routes are there through a 20×20 grid?


-- Just simply and mathematically, in n*n grid, the combinations are
-- (2n)!/(n!*n!)

-- gridRoutes n calculates amount of optimal paths in a n*n grid.
gridRoutes :: Integer -> Integer
gridRoutes n = facto (2*n) `div` (facto n)^2
    where
        facto 1 = 1
        facto n = n * facto (n-1)
