# install.packages("RSQLite")
# Load library
library(RSQLite)
# Connect to database
con <- dbConnect(SQLite(), dbname = "student.db")
# Create table
dbExecute(con, " CREATE TABLE IF NOT EXISTS student (
 id INTEGER,
 name TEXT,
 marks INTEGER
 )")
# Take input from user
id <- as.integer(readline("Enter Student ID: "))
name <- readline("Enter Student Name: ")
marks <- as.integer(readline("Enter Marks: "))
# Insert data using SQL
query <- "INSERT INTO student (id, name, marks) VALUES (?, ?, ?)"
dbExecute(con, query, params = list(id, name, marks))
# Retrieve and display data
result <- dbGetQuery(con, "SELECT * FROM student")
print(result)
# Close connection
dbDisconnect(con)
