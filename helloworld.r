# http://ofmind.net/doc/r-intro-lecture#LANGUAGE

# function
myfunc <- function(x) {
    if (x == 1)
        1
    else
        # recursive
        x * Recall(x - 1)
}
myfunc(6)

# assignment
yourfunc <- myfunc
rm(myfunc)
yourfunc(6)

# anonymous function
(function(x){
    if (x <= 0){
        0
    }else{
        x + Recall(x - 1)
    }
})(7)


# s3 class
(x1 <- gl(3, 3, labels = c("a", "b", "c")))
class(x1)
(x2 <- unclass(x1)) # remove class attribute
is.numeric(x2)

class(x2) <- "factor"
x2

# vector
x <- c(2, 3, 4, 5)
x
x <- 2:5
x
y <- 11:20
z <- c(x, y)
z