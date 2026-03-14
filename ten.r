# Remove all objects
rm(list = ls())
# User input
a <- as.integer(readline(prompt = "Enter first number: "))
b <- as.integer(readline(prompt = "Enter second number: "))
# Create objects in R environment
sum <- a + b
product <- a * b
cat("\nObjects in R Environment:\n")
print(ls())
cat("\nSum =", sum)
cat("\nProduct =", product)
# Display working directory
cat("\n\nCurrent Working Directory:\n")
print(getwd())
# Save environment
save.image(file = "my_environment.RData")
cat("\nEnvironment saved as 'my_environment.RData'\n")
# Remove all objects
rm(list = ls())
cat("\nObjects after removing all:\n")
print(ls())
# Load environment
load("my_environment.RData")
cat("\nEnvironment loaded successfully\n")
cat("\nObjects after loading environment:\n")
print(ls())


OUTPUT :
Enter first number: 8
Enter second number: 4
Objects in R Environment:
[1] "a" "b" "product" "sum"
Sum = 12
Product = 32
Current Working Directory:
[1] "C:/Users/Student/Documents"
Environment saved as 'my_environment.RData'
Objects after removing all:
character(0)
Environment loaded successfully
Objects after loading environment:
[1] "a" "b" "product" "sum"
