-- Give lasgeSum a file with a list of integers separated by newlines,
-- and it outputs the sum of the lines. Solution for Project Euler #13

largeSum file = (sum . map read . lines) `fmap` readFile file :: IO Integer