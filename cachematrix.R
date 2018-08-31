## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

##This function takes a matrix, sets the value of the matrix,
##gets the value of the matrix, sets the inverse of the matrix,
##and gets the value of the inverse.

makeCacheMatrix <- function(x = matrix()) {
  invMatrix <- NULL
  
  setMatrix <- function(y) {
   x <<- y
   invMatrix <- NULL
    
  }
  
  getMatrix <- function() x
  setInverse <- function(inverse) invMatrix <<- inverse
  getInverse <- function()  invMatrix
  list(setMatrix = setMatrix, getMatrix = getMatrix,
       setInverse = setInverse, getInverse = getInverse)
  
  
}


## Write a short comment describing this function

##gets the matrix from the makeChachematrix and returns the inverse

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  MatrixData <- x$getMatrix()
  invMatrix <- solve(MatrixData,...)
  x$setInverse(invMatrix)
  return(invMatrix)
  
}

TestMatrix <- matrix(1:4,2,2)
TestMatrix

CacheMatrix <- makeCacheMatrix(TestMatrix)
CacheMatrix$getMatrix()
CacheMatrix$getInverse()

cacheSolve(CacheMatrix)






