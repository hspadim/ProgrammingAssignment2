## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function


## makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
    
    inversa <- cacheSolve(x)
    setMatrix <- function(entrada) {
        print("kappa")
        inversa <<- cacheSolve(entrada)
        x <<- entrada
    }
    getMatrix <- function() x
    
    getInverse <- function() inversa
    
    list(setMatrix = setMatrix, getMatrix = getMatrix, getInverse = getInverse)
}


######################################################################################################################

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    matrix <- x
    if(is.null(matrix)) {
        message("getting cached data")
        return(matrix)
    }
    
    matrix <- solve(matrix)
    if(length(x)==sum(matrix == x)){
        return(x$getInverse())
    }
    matrix
}

## cacheSolve: This function computes the inverse of 
## the special "matrix" returned by makeCacheMatrix 
## above. If the inverse has already been calculated
## (and the matrix has not changed), then the cachesolve
## should retrieve the inverse from the cache.

