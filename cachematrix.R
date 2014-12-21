## Put comments here that give an overall description of what your
## functions do
## Write a short comment describing this function
makeCacheMatrix <- function(x = matrix()) {
        mm <- NULL
        set <- function(y) {
                x <<- y
                mm <<- NULL
         }
         get <- function() x
         setsolve <- function(solve) mm <<- solve
         getsolve <- function() mm
         list(set = set, get = get,
              setsolve = setsolve,
              getsolve = getsolve)
}
## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        mm <- x$getsolve()
        if(!is.null(mm))
                message("getting cached data")
        return(m)
data <- x$get()
mm <- solve(data, ...)
x$setsolve(mm)
print(mm)
}
x<- matrix(sample.int(100,size=9,replace=TRUE), nrow=3) 
    
        ## Return a matrix that is the inverse of 'x'
x
mm




