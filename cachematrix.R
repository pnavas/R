## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

# this function creates a list with the following functions: set, get, setInv, getInv
# with the operation <<- , internal variables remain in the loop

makeCacheMatrix <- function(x = matrix()) {
	xinv <- NULL
	set <- function(y) {
		x <<- y
		xinv <<- NULL 
	}
 
	get <- function() x
	setInv <- function(inv) xinv <<- inv 
	getInv <- function() xinv 
	list(set = set, get = get,
		setInv = setInv,
		getInv = getInv)
	}


## Write a short comment describing this function

# This function obtains the inversed matrix from x
# if no calculation, it will be null

cacheSolve <- function(x, ...) {

        ## Return a matrix that is the inverse of 'x'

	m <- x$getInv() 
	if(!is.null(m)) { 
		message("getting cached data")
		return(m) 
	}
	data <- x$get() 
	m <- solve(data) 
	x$setInv(m) 
