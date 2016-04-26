## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## set value of matrix
## get value of matrix
## set value of inverse of matrix
## get value of inverse of matrix

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
set <- function(y) {
        x <<- y
        inv <<- NULL
}
get <- function() x
setinverse <- function(inverse) inv <<- inverse
getinverse <- function() inv
list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}




## Write a short comment describing this function
## returns inverse of matrix
## check if inverse already computed if no
## compute inverse, if yes skip computation (print getting cached data)
##set value in cache using set

cacheSolve <- function(x, ...) {
        inv <- x$getinverse()
        if(!is.null(inv)) {
                message("getting cached data.")
                return(inv)
        }
        data <- x$get()
        inv <- solve(data)
        x$setinverse(inv)
        inv
}

