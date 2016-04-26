> source('~/GitHub/ProgrammingAssignment2/cachematrix.R')
> my_matrix <- makeCacheMatrix(matrix(1:4, 2, 2)
+ )
> my_matrix$get()
     [,1] [,2]
[1,]    1    3
[2,]    2    4
> my_matrix$getinverse()
NULL
> cacheSolve(my_matrix)
     [,1] [,2]
[1,]   -2  1.5
[2,]    1 -0.5
> cacheSolve(my_matrix)
getting cached data.
     [,1] [,2]
[1,]   -2  1.5
[2,]    1 -0.5