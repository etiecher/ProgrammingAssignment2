## This file contains two functions (makeCacheMatrix and cacheSolve) which aims at calculate the
## inverse of a matrix optmizing the usage of computer resources.
## Both functions leverage an example posted for R Programming Course at Coursera website at 
## https://class.coursera.org/rprog-032/human_grading/view/courses/975106/assessments/3/submissions
## refered on September 24th, 2015

## This function creates a special "vector" with four actions: set, get, setinverse and getinverse.
## 'set' saves the matrix to be cached and afterwards inversed
## 'get' returns the matrix cached
## 'setinverse' saves the inverse of the saved matrix
## 'getinverse' returns the inverse of the saved matrix

makeCacheMatrix <- function(x = matrix()) {
  
  makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
      x <<- y
      m <<- NULL
    }
    get <- function() x
    setinverse <- function(solve) m <<- solve
    getinverse <- function() m
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
  }
  
  
  ## This functions has two steps. First evaluates if whether the input variable already has an 
  ## inversed matrix cached on it. Second, if this condition is met, the function prints a message 
  ## saying it is using the cached value. It the condition is not met, the function calculates the 
  ## inverse of the matrix that is saved at the input variable.
  
  cacheSolve <- function(x, ...) {
  }
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
}