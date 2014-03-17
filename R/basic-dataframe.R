df <- data.frame(
    age = 1:10,
    race = rep( c("W", "B"), 5),
    year = 2013 )

# the difference between list and data.frame
# is that data frame tries to match the length
df$age
df$race
df$year

# linear regression
df2 <- data.frame(
    foo = seq(1,100,2),
    bar = seq(30.2,40,0.2))

fit <- lm( foo ~ bar, data = df2)

summary(fit)
