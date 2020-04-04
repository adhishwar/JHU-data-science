## A pair of functions that cache the inverse of a matrix


## Creates a special matrix object that can cache its inverse
makeCacheMatrix <- function(x = matrix())
{
    ## Initialize the inverse property
    
    i <- NULL
    ## Method to set the matrix
    
    set <- function(y) {
        x <<- y
        i <<- NULL
    }
    ## Method the get the matrix
    
    get <- function() x
    ## Method to set the inverse of the matrix
    
    setInv <- function(Inv) i <<- Inv
    ## Method to get the inverse of the matrix
    
    getInv <- function() i
    ## Return a list of the methods
    
    list(set = set, get = get,
         setInv = setInv,
         getInv = getInv)
}


## Compute the inverse of the special matrix returned by "makeCacheMatrix"
## above. If the inverse has already been calculated (and the matrix has not
## changed), then the "cachesolve" should retrieve the inverse from the cache.
cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    
    i <- x$getInv()
    ## Just return the inverse if its already set
    
    if(!is.null(i)) {
        message("getting cached data")
        return(i)
    }
    ## Get the matrix from our object
    
    data <- x$get()
    ## Calculate the inverse using Solve() Function in R

    i <- solve(data, ...)
    ## Set the inverse to the object
    
    x$setInv(i)
    ## Return the matrix
    
    i
}
