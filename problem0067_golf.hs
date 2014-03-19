-- Golfed solution for Euler #67 in Haskell.
-- Pipe the triangle/tree file from stdin, prints result.
-- 8 lines, 173 chars without comments.
z=zipWith
m=map
n (l:[])=maximum l
n (x:y:l)=n$z max(z(+)x y++[0])(0:z(+)x(tail y)):l
main=do
c<-getContents
let a=n$m(m read.words)$filter(notElem '#')$lines c::Int
print a