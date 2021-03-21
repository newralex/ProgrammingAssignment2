## Hi! I wasted two weeks trying to get every element of the functions shown in example which are much harder then in lectures and got this: 
## Assignment is actually same as in example (only "solve" instead of "mean"), but 
## This time we should assign the function to an INVERTIBLE NON-SINGULAR matrix =>
## det('matrix') !=0 ! Not just every given matrix will work here! Good luck!

##1

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() {x}
        setSolve <- function(solve) {m <<- solve}
        getSolve <- function() {m}
        list(set = set, get = get,
             setSolve = setSolve,
             getSolve = getSolve)
}

## 2

cacheSolve <- function(x, ...) {
        m <- x$getSolve()
        if(!is.null(m)) {
                message("getting cashed data")
                return(m)
        }
        Matr <- x$get()
        m <- solve(Matr, ...)
        x$setSolve(m)
        m
        
        ## Return a matrix that is the inverse of 'x'
}
