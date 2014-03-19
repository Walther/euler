-- Golfed solution for Euler #67 in Haskell.
-- Pipe the triangle/tree file from stdin, prints result.
-- oneliner, 136 chars without comments.
main=interact$show.n.map(map read.words).filter(notElem '#').lines;z=zipWith;n[l]=maximum l;n(x:y:l)=n$z max(z(+)x y++[0])(z(+)(0:x)y):l