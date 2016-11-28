##The below two functions cache the inverse of a matrix 

## Funtion 1 : This function computes the matrix that cache its inverse 

makeCacheMatrix <- function(x = matrix()) {
      Ab <- NULL
      set <- function(y){
              x <<- y
              Ab <<- NULL
        }
    get <- function() x
    setMatrix <- function(solve_M) Ab <<- solve_M
    getMatrix <- function() Ab
    list(set = set, get = get, setMatrix = setMatrix, getMatrix = getMatrix)
}



## Function 2: This function returns the inverse of the matrix computed by makeCacheMatrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
   Ab <- x$getMatrix()
    if(!is.null(Ab)){
         message("getting cached data")
         return(Ab)
        }
     data <- x$get()
     Ab <- solve(data, ...)
     x$setMatrix(Ab)
     return(Ab)      
}


