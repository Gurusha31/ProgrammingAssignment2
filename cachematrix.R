## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
 ##set the value 
   m<- NULL   
  set <- function(y){
    x<<-y
    m<<-NULL
  }
  get <- function()x ## get the value
  setInverse <- function(inverse)m<<-inverse ##set the inverse
  getInverse <- function()m ## get the inverse
  list(set=set, get=get)
  setInverse=setInverse
  getInverse=getInverse
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getInverse()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  mat <- x$get()
  m <- solve(mat,...)
  x$setInverse(m)
  m
}
