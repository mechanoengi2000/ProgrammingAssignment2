## Put comments here that give an overall description of what your
## functions do
## These functions written in partial fulfillment of Coursera Data Science: R Programming 
## Week 3 Assignment; week beginning June 23, 2021; GitHub user: Mechanoengi2000

## Write a short comment describing this function

## This function creates a special "matrix" object that can cache its inverse
  
  makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
 }
    ## to the functions with the $ operator
  
  
  ## Write a short comment describing this function
  ## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.
  ## If the inverse has already been calculated (and the matrix has not changed),
  ## then cacheSolve will retrieve the inverse from the cache
  
  cacheinverse <- function(x, ...) {
    inv <- x$getinverse()
    if(!is.null(inv)) {
      message("getting cached data")
      return(inv)
    }
    matrix_to_invert <- x$get()
    inv <- solve(matrix_to_invert, ...)
    x$setinverse(inv)
    inv
  }
  