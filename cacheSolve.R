# This function computes the inverse of the special "matrix" returned 
# by makeCacheMatrix. If the inverse has already been calculated 
# (and the matrix has not changed), then the cachesolve should retrieve 
# the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        cachedinv <- x$getinv()
        if(!is.null(cachedinv)) {
                message("Getting Cached Data")
                return(cachedinv)
        }
        input_matrix <- x$get()
        cachedinv <- solve(input_matrix, ...)
        x$setinv(cachedinv)
        cachedinv
}
