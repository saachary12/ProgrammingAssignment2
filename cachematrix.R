## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

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
