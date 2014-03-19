-- Golfed solution for Euler #67 in Haskell.
-- Pipe the triangle/tree file from stdin, prints result.
-- 8 lines, 161 chars without comments.
z=zipWith
n[l]=maximum l
n(x:y:l)=n$z max(z(+)x y++[0])(0:z(+)x(tail y)):l
main=do
c<-getContents
let a=n$map(map read.words)$filter(notElem '#')$lines c
print a