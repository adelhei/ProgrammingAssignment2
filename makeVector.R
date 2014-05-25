makeVector <- function(x = numeric()) {
    m <- NULL
    set <- function(y) {
        x <<- y    #set the value of the vector
        m <<- NULL #initialize value of mean
    }
    get <- function() x   #get the value of the vector
    setmean <- function(mean) m <<- mean   #set the value of the mean
    getmean <- function() m   #get the value of the mean
    list(set = set, get = get,
         setmean = setmean,
         getmean = getmean)
}
   



