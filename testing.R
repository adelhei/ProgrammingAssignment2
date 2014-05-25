# calls to check if code works:

tf<-matrix(1:4,2,2)   # creates simple 2x2 matrix
tf                              # display it
tf1<-solve(tf)           # calculate the inverse
tf1                          # display it
tf * tf1                   # this does element based multiplication - not what we want
tf %*% tf1         # this one does true matrix multiplication and yields the Identity matrix, proving that tf1 is the inverse of tf


amatrix = makeCacheMatrix(matrix(c(1,2,3,4), nrow=2, ncol=2))
amatrix$get()         # Returns original matrix
cacheSolve(amatrix)   # Computes, caches, and returns    matrix inverse
amatrix$getinv()  # Returns matrix inverse
cacheSolve(amatrix)   # Returns cached matrix inverse using previously computed matrix inverse

amatrix$set(matrix(c(0,5,99,66), nrow=2, ncol=2)) # Modify existing matrix
cacheSolve(amatrix)   # Computes, caches, and returns new matrix inverse
amatrix$get()         # Returns matrix
amatrix$getinv()  # Returns matrix inverse
