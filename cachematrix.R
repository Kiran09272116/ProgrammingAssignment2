## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv<-NULL  ## indicates inv is null intially
  set<-function(y){
    x<<-y  ## setting up the data
    inv<<-NULL
  }
  get<-function() x ## getting the data while needed
  setinverse<-function(solve) m<-solve ##finding out inverse
  getinverse<-function() m ## geting the inverse if exsits
  list(set = set,get = get,setinverse=setinverse,getinverse=getinverse) ## to create list for multipule outputs
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  m <- x$getinverse()
  if(!is.null(inv)) { ## to check if inv is empty or not
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv<- solve(data, ...)
  x$setinverse(inv)
  inv ## Return a matrix that is the inverse of 'x'
}
