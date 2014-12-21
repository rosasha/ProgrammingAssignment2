## INVERSE MATRIX (Return a matrix that is the inverse of 'x')

makeCacheMatrix <- function(x = matrix()) {
        mm <- NULL #In makeCacheMatrix : object created , solve set to NULL
        set <- function(y) { #Set function, new value being assigned to x
                x <<- y
                mm <<- NULL #and hence setting solve as NULL
         }
         get <- function() x #In Get object function, will return object
         setsolve <- function(solve) mm <<- solve #In set mean function , cache solve
         getsolve <- function() mm #In Get object function, will return object
         list(set = set, get = get, #list of setters getters
              setsolve = setsolve,
              getsolve = getsolve)
}

cachesolve <- function(x, ...) { #In cachesolve : Object x calling get solve
        mm <- x$getsolve()
        if(!is.null(mm)){ #cached solve not NULL, returning cached solve
        return(mm)
        }
data <- x$get() #find solve of data
mm <- solve(data, ...) #call set solve
x$setsolve(mm) #and return solve
mm
}

#for checking:
#matr1<-matrix(sample.int(100,size=9,replace=TRUE), nrow=3)
#bigvec<- makeCacheMatrix(matr1) 
#cachesolve(bigvec)   
#solve(matr1)
#matr1

