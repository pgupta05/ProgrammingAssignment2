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

  inv.data <- x$getinverse()
  if(!is.null(inv.data)) {
    message("getting cached data.")
    return(inv.data)
  }
  data <- x$get()
  inv <- solve(data)
  x$setinverse(inv.data)
  inv.data
}

## Sample Run
#> x = rbind(c(1, 5/8), c(5/8, 1))
#> mInv <- makeCacheMatrix(x)
#> mInv$get
#function() x
#<environment: 0x0000000007625a70>
#> cacheSolv(mInv)
#Error: could not find function "cacheSolv"
#> cacheSolve(mInv)
#          [,1]      [,2]
#[1,]  1.641026 -1.025641
#[2,] -1.025641  1.641026
#> cacheSolv(mInv)
#Error: could not find function "cacheSolv"
#> cacheSolve(mInv)
#getting cached data.
#          [,1]      [,2]
#[1,]  1.641026 -1.025641
#[2,] -1.025641  1.641026
#> mInv$get()
#      [,1]  [,2]
#[1,] 1.000 0.625
#[2,] 0.625 1.000
#> 
