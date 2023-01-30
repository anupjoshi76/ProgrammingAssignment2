## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
 m <- NULL
 set <- function(y){
   x <<-y
   m <<-NULL
 }
 get <-function(x)
   setinverse <- function(inverse) m <<-inverse
 getinverse <- function() m
 list(set=set, get= get(), setinverse=setinverse, getinverse=getinverse)
}


## this function creates set,get,setinverse and getinverse functions to 
##set : this function set takes an argument y and assigns it to x in
##another environment. It also sets m to NULL or resets it if x is reset.
##get: this function retrieves x from parent environment
##setinverse: after setinverse is completed, the inverse is assigned to m 
## in another environment
##getinverse:gets the inverse
##the list is created so that $ operator can be used in cachesolve

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <-x$getinverse()
  if(!NULL(m)){
    message("getting cached data")
    return(m)
  }
  data <-x$get()
  m <- inverse(data,...)
  x$setinverse(m)
  m
  
}

