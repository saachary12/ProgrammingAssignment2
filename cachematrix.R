## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

    set the value of the matrix
    get the value of the matrix
    set the value of the inverse
    get the value of the inverse

makeCacheMatrix <- function(X = matrix()) 
{
    m <- NULL
    set <- function(y){
        X <<- y
        m <<- NULL
    }
       
    get <- function() 
    {X}
         
    setInverse <- function(inverse)
    {m <<- inverse}
           
    getInverse <- function()
    {m}
             
    list(set = set, get = get, 
         setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function

This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
If the inverse has already been calculated (and the matrix has not changed), then the cachesolve 
should retrieve the inverse from the cache.

cacheSolve <- function(X) 
{
    m <- X$getInverse()
    if(!is.null(m)) 
    {
        message("getting cached data")
        return(m)
    }
    data <- X$get()
    m <- Solve(data)
    X$setInverse(m)
    m     
}
