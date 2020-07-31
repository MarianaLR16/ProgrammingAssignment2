## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  a <- NULL
  setting <- function(c) {
    
    x <<- c
    a <<- NULL
  
}

    getting <- function() x
    settinginverse <- function(inverse) a <<- inverse
    gettinginverse <- function() a
    list(setting = setting, getting = getting, settinginverse = settinginverse, gettinginverse = gettinginverse)
    
}  


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  a <- x$gettinginverse()
    if(!is.null(a)){
      message("obteniendo cache")
      return(a)
      
    }
    
    datos <- x$getting ()
    a <- solve(datos, ...)
        x$settinginverse(a)
    
      print(a)
  
  
}



