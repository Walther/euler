-- Golfed solution for Euler #67 in Haskell.
-- Pipe the triangle/tree file from stdin, prints result.
-- 4 lines, 141 chars without comments.
z=zipWith
n[l]=maximum l
n(x:y:l)=n$z max(z(+)x y++[0])(0:z(+)x(tail y)):l
main=interact$show.n.map(map read.words).filter(notElem '#').lines