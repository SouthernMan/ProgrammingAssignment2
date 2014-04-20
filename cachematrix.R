## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        Matrix        <- x
        MatrixInverse <- NULL

        set <- function(y) {
                Matrix        <<- y
                MatrixInverse <<- NULL
        }

        get <- function() {
                Matrix
        }

        setInverse <- function(Inverse) {
                MatrixInverse <<- Inverse
        }

        getInverse <- function() {
                 MatrixInverse
        }

        list(set        = set        , 
             get        = get        ,
             setInverse = setInverse ,
             getInverse = getInverse   )
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        mi <- x$getInverse()
        if(!is.null(mi)) {
                message("getting cached inverse")
                return(mi)
        }
        message("solving inverse")
        data <- x$get()
        mi <- solve(data, ...)
        x$setInverse(mi)
        mi
}
