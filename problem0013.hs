largeSum file = (sum . map read . lines) `fmap` readFile file :: IO Integer


