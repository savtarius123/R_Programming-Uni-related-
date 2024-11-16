###Presence Task 1

###The result of rolling a die 1000 times (stored in a vector x)

x <- sample(1:6, 1000, replace = T); x


### storing the results <= to 5 in a vector  
y <- x[x<=5]; y

### storing the results equal to 6 in a vector z 
z <- x[x == 6]; z

### how many times the 6 in thrown
six <- length(z); six

###Presence Task 2

?airquality
#### loading the dataset
airquality

###a
air1 <- airquality[airquality$Wind < 10,]; air1

###b
air2 <- airquality[airquality$Temp > 70,]; air2

###c
?subset
air3 <- subset(airquality, airquality$Wind < 10 & airquality$Temp > 70, select = c(Month, Ozone))
air3
#row.names(air3) <- NULL

###Presence Task 3

###a
?na.omit
#The data set without missing values
air4 <- na.omit(airquality); air4

###b
#no missing values in the ozone column
air5 <- airquality[!is.na(airquality$Ozone),]; air5

###c
#no missing values in Ozone and Solar Radiation columns
air5 <- airquality[!is.na(airquality$Ozone) & !is.na(airquality$Solar.R),]; air5

###d 
air3
air6 <- airquality[airquality$Wind < 10 & airquality$Temp > 70, ];air6
air3$TempC <- 5/9 * (air6$Temp - 32); air3

###e
air3 <- airquality[airquality$Wind < 10 & airquality$Temp > 70,];air3
strongest_wind <- air3[which.max(air3$Wind), c("Month", "Day", "Wind")];strongest_wind
strongest_temp <- air3[which.max(air3$Temp), c("Month", "Day")];strongest_temp
strongest_ozone <- air3[which.max(air3$Ozone), c("Month", "Day")];strongest_ozone
strongest_solar <- air3[which.max(air3$Solar.R), c("Month", "Day")];strongest_solar


######Homework task 1
options(max.print = 1000000)
pop1 <- rnorm(2000,170,10);pop1

###a
pop1 <- round(pop1);pop1

####b
which(pop1> 190)
#the which() returns the indices of the elements in pop1 that are bigger than 190

####c 
#a sub group of the vector 190 than has values larger than 190

###d

height1 <- pop1[pop1 < 155]; height1

height2 <- pop1[pop1 > 185]; height2

###e
pop1
rev(pop1) #reversing the order of the elements.(the first becomes the last etc..)
unique(pop1) #the values that are unique(without duplicates)
duplicated(pop1) #returns if the elements are duplicated or not(true if yes, false otherwise)
pop1[duplicated(pop1)] #return the elements of pop1 that are duplicated
pop1[!duplicated(pop1)] #return the unique elements(no duplicates)

###f

pop2 <- rnorm(1000, mean = 172, sd = 12);pop2

###g
pop2 <- round(pop2);pop2

###h

c1 <- sample(pop1, 1000); c1
c2 <- sample(pop2, 1000); c2
X <- cbind(c1, c2);X

###i

sum(X[, 1] < X[, 2])



######Homework task 2

###a

getOdd <- function(x) {
  if (!is.vector(x) || !is.numeric(x)) {
    return("x has to be a numeric vector!")
  } else {
    x <- as.integer(x)              
    odd <- x[x %% 2 == 1]           
    return(unique(odd))            
  }
}

###b

my_sample <- sample(-50:50, 50, replace = FALSE); my_sample

any(my_sample < 0) #There are some negative values

result <- getOdd(my_sample);result

div_by_3 <- result[result %% 3 == 0];div_by_3
result

######Homework task 3

####calling and reading the data set 
airquality

n <- length(airquality$Wind);n
for(i in 1:n ){
  
  if(airquality$Wind[i] <= 12 ){
    
    airquality$Wind2[i] <- "weak"
    
  } else if ( airquality$Wind[i] > 12 ) {
    
    airquality$Wind2[i] <- "strong"
    
  }
  
}
#### airquality$Wind2 <- ifelse(airquality$Wind <= 12, "weak", "strong")
wind3 <- NULL

for(i in 1:n) {
  if (airquality$Wind[i] <= 4) {
    wind3[i] <- "weak"
  } else if (airquality$Wind[i] > 4 & airquality$Wind[i] <= 18) {  
    wind3[i] <- "mild"
  } else {
    wind3[i] <- "strong"
  }
}

wind3

###to add wind3 to airquality

airquality$Wind3 <- wind3
