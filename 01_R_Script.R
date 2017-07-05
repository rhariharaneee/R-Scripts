#Basic R Functions
# Show packages
# Explain about the different window


v <- c( 2,5.5,6)
t <- c(8, 3, 4)
print(v*t)
v*t


v <- c( 2,5.5,6)
t <- c(8, 3, 4)
print(v/t)

v <- c(2,5.5,6,9)
t <- c(8,2.5,14,9)
print(v>t)


# Create a vector.
x <- c('red','green',"yellow")
print(x)

# Get the class of the vector.
print(class(x))

# Create a list.
list1 <- list(c(2,5,3),21.3,sin)

# Print the list.
print(list1)


# Create a matrix.
M = matrix( c('a','a','b','c','b','a'), nrow = 2, ncol = 3, byrow = TRUE)
print(M)


# Create an array.
a <- array(c('green','yellow'),dim = c(3,3,2))
print(a)


x<- 1:15;
y<-as.vector(t(10));
z=x+y;
z

#table
year=rep(seq(1990,2016) , each=10)
name=rep(letters[1:10] , 27)
value=sample( seq(0,1,0.0001) , length(year))
data=data.frame(year, name, value)
data




