cachemean <- function(x, ...) {   # calculates mean of special vector from "makeVector)
    m <- x$getmean()
    if(!is.null(m)) {  # has mean bean already calculated?
        message("getting cached data")
        return(m)  #retrieve mean from cache
    }
    data <- x$get()     # load x-data in varialbe data
    m <- mean(data, ...)  #calculate mean of data
    x$setmean(m)   # set value of mean in cache
    m
}