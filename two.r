# File name
file_name <- "student_data.csv"
# Check if file exists
if (!file.exists(file_name)) {
 # Create empty CSV with headers
 data <- data.frame(
 ID = integer(),
 Name = character(),
 Marks = integer()
 )
 write.csv(data, file_name, row.names = FALSE)
}
# Get input from user
id <- as.integer(readline("Enter Student ID: "))
name <- readline("Enter Student Name: ")
marks <- as.integer(readline("Enter Marks: "))
# Create new record
new_data <- data.frame(
 ID = id,
 Name = name,
 Marks = marks
)
# Append data to CSV file
write.table(
 new_data,
 file_name,
  sep = ",",
 row.names = FALSE,
 col.names = FALSE,
 append = TRUE
)
# Read and display file contents
final_data <- read.csv(file_name)
print(final_data)
