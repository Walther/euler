-- Solution for Euler 67.
import Data.List

maxZip :: Integral a => [a] -> [a]
maxZip xs = zipWith max xs (tail xs)

adder :: Integral a => [a] -> [a] -> [a]
adder = zipWith (+)

count :: Integral a => [[a]] -> a
count (x:[]) = head x
count xs = count $ init (init xs) ++ [adder (last (init xs)) (maxZip (last xs))]


readInt = read :: String -> Int

main = do
    print "Input file: "
    inFile <- getLine
    content <- readFile inFile
    let parsedLines = lines content
        uncommented = map words $ filter (notElem '#') parsedLines
        tree = map (map readInt) uncommented

    let answer = count tree
    print answer

-- just for testing; a pyramid of [[1],[1,2],[1,2,3],...[1..10]], answer is 55
asdf = drop 1 $ inits [1..10]