## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
  mInv <- NULL
  set <- function(y) {
    x <<- y
    mInv <<- NULL
  }
  get <- function() x
 # setmean <- function(mean) m <<- mean
#  getmean <- function() m
   setinverse <- function(inverse) mInv <<- inverse
   getinverse <- function() mInv

 ## list(set = set, get = get, setmean = setmean,getmean = getmean)
list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
  
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'

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
