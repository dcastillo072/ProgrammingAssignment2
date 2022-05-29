## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  s <- NULL #initialize the inverse
  
  #method to set the matrix
  set <- function(y) {
    x <<- y
    s <<- NULL
  }
  
  #method to get the matrix
  get <- function() x
  
  #method to set the inverse of the matrix
  setsolve <- function(solve) s <<- solve
  
  #method to get the inverse of the matrix
  getsolve <- function() s
  
  #return a list of the methods
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  s <- x$getsolve()
  
  
  if(!is.null(s)) {
    message("getting inversed matrix")
    return(s)
  }
  
  
  data <- x$get()
  
  s <- solve(data, ...)
  
  x$setsolve(s)
  
  s
}
