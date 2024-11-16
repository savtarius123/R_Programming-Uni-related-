###### Presence Task 1 
############## a )

my_mean <- function(x){
  l <- length(x) # The length of l
  Summe <- sum(x) # The sum of all the elements of x
  result <- (Summe/l) # calculating the mean of the vector x 
  return (result)
}

############## b)

my.rootn <- function(x,n) {
  
  if (x < 0){
    
    stop("The number (",x,") you gave should be positive!") # i know that we assumed that x is a rational and positive number
    
  } else {
    
    result <- x ^ (1/n) # the calculation of the n-th root of x 
    
    return (result) # returning the the calculated n-th root
  }
  
}

###### Presence Task 2

############ a 

x <- seq(1,50);x
y <- seq(1,10, by = 0.2);y
rd_root_square <- x ^ (1/3);rd_root_square
log_y <- log(y); log_y

############ b
options(max.print = 1000000)
v1 <- rep(c(1,2,3), times = 40);v1
v2 <- rep(1:100, c(2:101));v2
v3 <- rep(v2, times = 4);v3
a  <- c(2:101); a
rep(1:100,a)

############ c

r1 <- seq(0.5,10, by = 0.5);r1
r2 <- c(rep(3,10),rep(0,10));r2
r3 <- rep(c(1,2),10);r3
#r44 <- c(rep(1,1), rep(2,2), rep(3,3), rep(4,4), rep(5,5), rep(6,5));r44
r4 <- rep(1:6,c(1,2,3,4,5,5));r4
#r4 == r44
r5 <- c(1,2,1:3,1:4,1:5,rep(0,5));r5
r6 <- c (rep(1:4,3),5:8);r6
r7 <- c(seq(1,10), seq(10,1));r7
M <- rbind(r1,r2,r3,r4,r5,r6,r7);M


######### Homework Task 1

v1 <- rep( c("T", "C"), 100);v1
v2 <- c ( rep("T", 100), rep("C", 101));v2

######### Homework Task 2

row1 <- c(31, 21, 12); row2 <- c(22, 41, 30); row3 <- c(19,64,52)
X <- rbind(row1, row2, row3); X
v <- c(12, 2, -10);v

#det(X)
det_x <- det(X);det_x

#Inverse of X
inv <- solve(X);inv

#Transpose of X
Trans <- t(X); Trans

# Transpose multiplied by inverse 
inv_trans <- Trans %*% inv; inv_trans

# Matrix multiplied by its inverse
x_inv <- X %*% solve(X); x_inv

# Matrix multiplied by v
X_1byv <- inv %*% v; X_1byv

# the result isn't expected. It isn't the identity matrix. The inequality is caused by rounding.

######### Homework Task 3

#####a
set.seed(453)
x <- rnorm(1000, mean = 170, sd = 10)
mymean <- mean (x); mymean
mysd <- sd(x); mysd

abs

# There are relative differences:

abs((mean(x) - 170)/170) # 0.27%
abs((sd(x) - 10)/10) # 2.46%

# abs. differences:
(mean(x) - 170)
(sd(x) - 10)

###### b 
y <- x[1:500];y
z <-x[501:length(x)];z

#######c
w <- x[x < 150 | x > 190];w

#######d
x1 <- rnorm(1000, mean = 180, sd = 10);x1

#######e
M <- cbind(x, x1); M 
dim(M)

#######f
over_190 <- M[, 1] > 190 & M[, 2] > 190;over_190
sum(over_190)

#######g
over_150 <- M[, 1] < 150 | M[, 2] < 150;over_150
sum(over_150)
