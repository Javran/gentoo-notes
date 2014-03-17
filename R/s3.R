xx <- rnorm(1000)

class(xx)
# "numeric"

yy <- ecdf(xx)

class(yy)
# not sure what it is,
# maybe just all the superclasses

methods(plot)

getS3method("plot", "histogram")

# create S3 class

## insert method
print.mybox <- function(x, ...) {
    cat("height:", x$height, "\n")
    cat("width:", x$width, "\n")
}

b <- list(height=100,width=50)

print(b)

# give it a "class"
class(b) <- "mybox"

# now uses print.mybox
print(b)

print.mybox
getS3method("print", "mybox")

# help system
## documented in the function that creates them (usually)
## also try ?method.class

# inheritance: class attribute being a vector,
# first one is tried, and then the second, etc.

# replacement methods

a <- matrix(1:16, nrow = 4, ncol = 4)
colnames(a) <- paste("V", 1:4, sep = ".")
colnames(a)
point <- list(x=1, y=2)
x.val <- function(x,value) {
    x$x <- value
}

# notice: no space between "x.val" and "<-"
# stupid class system.
"x.val<-" <- function(x, value) {
    x$x <- value
    return (x)
}

x.val(point,10)
# seems this one does not change data inside "point"
print(point)

x.val(point) <- 10
print(point)

