##The below two functions cache the inverse of a matrix 

## Funtion 1 : This function cache the inverse of a matrix 

makeCacheMatrix <- function(x = matrix()) {
      Ab <- NULL
      set <- function(y){
              x <<- y
              Ab <<- NULL
        }
    get <- function() x
    setMatrix <- function(solve) Ab <<- solve
    getMatrix <- function() Ab
    list(set = set, get = get, setMatrix = setMatrix, getMatrix = getMatrix)
}



## Function 2: This function returns the inverse of the matrix computed from the makeCacheMatrix function
          ##If the inverse is already computed then it skips the calculation and returns the cached data
          ## Else it calculated the inverse

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
   Ab <- x$getMatrix()
    if(!is.null(Ab)){
         message("getting cached data")
         return(Ab)
        }
    else {  
     message("Not in cache. Calculating inverse")
     data <- x$get()
     Ab <- solve(data, ...)
     x$setMatrix(Ab)
     return(Ab)      
      }
}





## Validation
## Create Matrix x

        x <- matrix(rnorm(25, mean = 0, sd = 3), 5, 5)
        x

## Check if the Matrix is Invertible
        det(x) 

## Validate makeCacheMatrix

        x1 <- makeCacheMatrix(x)
        x1$get()
        x1$getMatrix()

## Validate cacheSolve

        x2 <- cacheSolve(x1)
        x2


