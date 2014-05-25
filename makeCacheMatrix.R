makeCacheMatrix <- function(A = matrix()) {
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




