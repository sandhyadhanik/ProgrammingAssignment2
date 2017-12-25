## The first function creates a list that sets and gets the value to the matrix and its inverse.
##the second function first checks if the inverse has already been calulated, if not then it returns the inverse.

## caches the Matrix inverse

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
  set <- function(y){
    x <<- y
    i <<- NULL
  }
  get <- function() x
  
        setInverse <- function(smat)
          {i <<- smat
           }
           getInverse <- function() i
  
        list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)


}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i <- x$getInverse()
  if(!is.null(i)){
    message("getting cached data")
    return(i)
  }
  matA <- x$get()
  i <- solve(matA)
  x$setInverse(i)
  i      
        
}
