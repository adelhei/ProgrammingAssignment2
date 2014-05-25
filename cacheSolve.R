cacheSolve <- function(A, ...) {   # calculates mean of special vector from "makeCacheMatrix)
    inv <- A$getinv()
    if(!is.null(inv)) {  # has mean bean already calculated?
        message("getting cached data") #retrieve mean from cache
        return(inv)
    }    
    data <- inv$get()
    inv <- solve()
    A$setinv(inv)
    inv
        
    }
    
    