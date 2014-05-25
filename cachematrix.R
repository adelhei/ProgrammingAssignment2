## Put comments here that give an overall description of what your
## functions do

## This function creates a special Matrix from an ordinary square, inversable matrix
## This special matrix is cachable, that is certain properties can be stored and retrieved.

makeCacheMatrix <- function(x = matrix()) {
    inv <<- diag(dim(A)) # initialize the matrix (identity matrix
    # of the size of the original matrix, since the inverse has the same size)
    set <- function(y) {
        A <<- y   # set the value of the matrix
        inv <<- diag(min(dim(A))) # initialize the matrix (identity matrix
        # of the size of the original matrix)
    }
    get <- function() A   #get the value of the matrix
    someInv = solve(A)   # calculate the inverse of the matrix A
    setinv <- function(someInv) inv <<- someInv # function to set the inverse
    getinv <- function() inv # function to get the inverse
    list(set = set, get = get,...=
             setinv = setinv,
         getinv = getinv)

}


## Write a short comment describing this function
## The function cacheSolve takes a cachable, invertible matrix A, created as a 
## special matrix with makeCacheMatrix. It either retrieves the cached inverse
## of the matrix or calculates and caches the inverse of A.


cacheSolve <- function(A, ...) {
        ## Return a matrix that is the inverse of 'A'
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
