###### Presence Task 1

x <- c(4,8,12)
x
x/2
x**2 # **2 is basically the same as ^
x^2
sqrt(x)
x^(1/3)
x[2]
x[-1] # the vector x without the first element
x - 1
1:5
y <- c(-1,1,0.4)
z <- x*y
z
rep(x, times = 3)
rep(x, each = 3, times = 3) # each : each element of x is repeated 3 times
m1 <- rbind(x,y); m1 # rbind()(binding the rows), cbind()(binding the columns)
m1[1,]
m2 <- cbind(x,z, -x, 1:3); m2
dim(m2)
a <- 2;a
b = 1/3; b
1.23 -> c; c 
cat("The numbers are : \n a = ", a, ", b =", b, ", c =", c, "\n")

###### Presence Task 2

x <- tan(3*pi/4)
print(x)
x # Using ctrl+enter, R will automatically display the value of x
?arctan
?atan
Y <- atan(x)
Y
rm(x,Y)
ls(x)
ls(Y)

###### Presence Task 3

# we want to store the weight in a vector x
#creating x 
x <- c(65,79,65,85) # weight in Kg
x

# we want to store the height in a vector y
#create y
y <- c(170,177,166,189) # height in cm
y

# storing the body mass index in a vector z
#create z

z <- x/((y/100))^2 # y/100 is to convert to m
z

# Which individuals have a BMI bigger than 24

which(z > 24) # the which function shows the indices

z[which(z > 24)]

###### Presence Task 4

x <- c(67, 88, 99, 102, 76, 69, 85, 92, 83, 77) 
x
sum(x) #the sum of all the elements in  the vector x
length(x) #the number of the elements of x
sum(x)/length(x)
mean(x)
median(x)
sd(x) # how far individual elements are dispersed from the mean of x
var(x)
min(x)
max(x)
summary(x)
?summary
range(x)
sort(x)
barplot(x)
hist(x,breaks = c(45,60, 75, 90, 105, 120))
?hist
