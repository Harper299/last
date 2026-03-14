# SUBSETTING IN VECTOR, MATRIX AND DATA FRAME
# ---------- VECTOR SUBSETTING ----------
cat("VECTOR SUBSETTING\n")
n <- as.integer(readline("Enter number of elements in vector: "))
vec <- numeric(n)
for (i in 1:n) {
 vec[i] <- as.numeric(readline(paste("Enter element", i, ": ")))
}
cat("\nOriginal Vector:\n")
print(vec)
cat("\nSubset (Elements > 10):\n")
print(vec[vec > 10])
# ---------- MATRIX SUBSETTING ----------
cat("\n\nMATRIX SUBSETTING\n")
r <- as.integer(readline("Enter number of rows: "))
c <- as.integer(readline("Enter number of columns: "))
mat <- matrix(0, nrow = r, ncol = c)
for (i in 1:r) {
 for (j in 1:c) {
 mat[i, j] <- as.numeric(readline(paste("Enter element [", i, ",", j, "]: ")))
 }
}
cat("\nOriginal Matrix:\n")
print(mat)
cat("\nSubset (First Row):\n")
print(mat[1, ])
cat("\nSubset (First Column):\n")
print(mat[, 1])
# ---------- DATA FRAME SUBSETTING ----------
cat("\n\nDATA FRAME SUBSETTING\n")
n <- as.integer(readline("Enter number of records: "))
name <- character(n)
age <- numeric(n)
for (i in 1:n) {
 name[i] <- readline(paste("Enter name", i, ": "))
 age[i] <- as.numeric(readline(paste("Enter age", i, ": ")))
}
df <- data.frame(Name = name, Age = age)
cat("\nOriginal Data Frame:\n")
print(df)
cat("\nSubset (Age > 20):\n")
print(df[df$Age > 20, ])
cat("\nSubset (Only Name Column):\n")
print(df[, "Name"])

OUTPUT :
VECTOR SUBSETTING
Enter number of elements in vector: 5
Enter element 1 : 5
Enter element 2 : 12
Enter element 3 : 8
Enter element 4 : 25
Enter element 5 : 15
Original Vector:
[1] 5 12 8 25 15
Subset (Elements > 10):
[1] 12 25 15
MATRIX SUBSETTING
Enter number of rows: 2
Enter number of columns: 3
Enter element [1 ,1]: 1
Enter element [1 ,2]: 2
Enter element [1 ,3]: 3
Enter element [2 ,1]: 4
Enter element [2 ,2]: 5
Enter element [2 ,3]: 6
Original Matrix:
 [,1] [,2] [,3]
[1,] 1 2 3
[2,] 4 5 6
Subset (First Row):
[1] 1 2 3
Subset (First Column):
[1] 1 4
DATA FRAME SUBSETTING
Enter number of records: 3
Enter name 1 : Ravi
Enter age 1 : 18
Enter name 2 : Anu
Enter age 2 : 22
Enter name 3 : Kiran
Enter age 3 : 25
Original Data Frame:
 Name Age
1 Ravi 18
2 Anu 22
3 Kiran 25
Subset (Age > 20):
 Name Age
2 Anu 22
3 Kiran 25
Subset (Only Name Column):
[1] "Ravi" "Anu" "Kiran"





