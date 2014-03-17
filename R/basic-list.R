xs <- list( foo = 1:10,
            bar = rep(c("a","b"),6),
            fool = 2048 )

xs[[1]]
# 1 2 3 ... 10

xs[[2]]
# "a" "b" ...

xs[[3]]
# 2048

# access by name - `$`
xs$fool
# 2048
