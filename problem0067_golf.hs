main=do
 c<-getContents
 let a=n$m(m read.words)$filter(notElem '#')$lines c ::Int
 print a
z=zipWith
m=map
n (l:[])=maximum l
n (x:y:l)=n$z max(z(+)x y++[0])(0:z(+)x(tail y)):l