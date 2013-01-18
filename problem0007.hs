-- primes is the infinite list of primes. Load the script in ghci, and issue "primes !! 10000"
-- to get the solution to Euler #7. Sidenote: the prime algo can be optimized ;)

primes = [x | x <- [2..], checkPrime x (x `div` 2)] 
    where checkPrime _ 1 = True
          checkPrime x now =  if x `mod` now == 0
                              then False
                              else checkPrime x (now - 1)