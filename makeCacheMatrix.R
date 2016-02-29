## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix(), ...) {
        cachedinv <- NULL
        set <- function(y) {
                x <<- y
                cachedinv <<- NULL
        }
        get <- function() x
        setinv <- function(inverse) cachedinv <<- inverse
        getinv <- function() cachedinv
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)
        
}