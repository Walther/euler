-- Golfed solution for Euler #67 in Haskell.
-- Pipe the triangle/tree file from stdin, prints result.
-- 8 lines, 177 chars without comments.
main=do
 c<-getContents
 let a=n$m(m read.words)$filter(notElem '#')$lines c ::Int
 print a
z=zipWith
m=map
n (l:[])=maximum l
n (x:y:l)=n$z max(z(+)x y++[0])(0:z(+)x(tail y)):l