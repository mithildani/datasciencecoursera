##  Below are two functions that are used to create a special object 
##  that stores a matrix and cache's its inverse matrix.

## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
    set <- function(y) {
        m <<- y
        i <<- NULL
    }
    get <- function() m
    setinv <- function(inv) i <<- inv
    getinv <- function() i
    list(set = set, get = get,
         setinv = setinv,
         getinv = getinv)
}


## This function computes the inverse of the special "matrix" 
## returned by makeCacheMatrix above.

cacheSolve <- function(m, ...) {
    ## Return a matrix that is the inverse of 'm'
    i <- m$getinv()
    
    # check if inverse is cached 
    if(!is.null(i)) {
        message("getting cached data")
        return(i)
    }
    
    # calculate and cache inverse
    data <- m$get()
    i <- solve(data)
    m$setinv(i)
    
    return(i)
}
