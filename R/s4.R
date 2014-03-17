require("methods")

myboxR <- representation(
    height="numeric",
    weight="numeric")

setClass("boxS4", representation = myboxR)
getClass("boxS4")

b1 <- new("boxS4")
b1

b2 <- new("boxS4", height = 10, weight = 45)
b2

validObject(b1)
validObject(b2)

b1@height
b2@height

b1@height <- 101010
b1@weight <- 2048
b1

setMethod("show", signature("boxS4"),
          function (obj) {
              cat( "height:", obj@height, "\n")
              cat( "weight:", obj@weight, "\n")
          })

b2
