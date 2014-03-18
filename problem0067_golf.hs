r=read::String->Int
main=do
 c <- readFile "tree.txt"
 let a=n$m (m r)$m words$filter(notElem '#')$lines c
 print a
z=zipWith
m=map
n (xs:[])=maximum xs
n (x:y:xs)=n$z max(z(+)x y++[0])(0:z(+)x(tail y)):xs