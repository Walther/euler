-- Solution for Euler 67.
import Data.List


-- Main stuff.
readInt = read :: String -> Int

main = do
    print "Input file:"
    inFile <- getLine
    content <- readFile inFile
    let parsedLines = lines content
        uncommented = map words $ filter (notElem '#') parsedLines
        tree = map (map readInt) uncommented
        answer = count tree
    print answer

-- Begin original definition, non-golfed and from bottom to top

maxZip :: Integral a => [a] -> [a]
maxZip xs = zipWith max xs (tail xs)

count :: Integral a => [[a]] -> a
count (x:[]) = head x
count xs = count $ init (init xs) ++ [zipWith (+) (last (init xs)) (maxZip (last xs))]


-- Alternative golfed version that goes from top to bottom
zipper x y = zipWith max (zipWith (+) x y ) (zipWith (+) x (tail y)) ++ [((last x) + (last y))]

count' (xs:[]) = maximum xs
count' (x:y:xs) = count' $ zipper x y : xs

-- just for testing; a pyramid of [[1],[1,2],[1,2,3],...[1..10]]
-- gchi, :l problem0067.hsm, count asdf -> 55, count' asdf -> 55
asdf = drop 1 $ inits [1..10]