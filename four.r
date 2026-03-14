# Get date of birth from user
dob_input <- readline("Enter your Date of Birth (YYYY-MM-DD): ")
# Convert to Date
dob <- as.Date(dob_input)
# Get current date
current_date <- Sys.Date()
# Calculate age
age <- as.numeric(format(current_date, "%Y")) - as.numeric(format(dob, "%Y"))
# Adjust if birthday hasn't occurred yet this year
if (format(current_date, "%m-%d") < format(dob, "%m-%d")) {
 age <- age - 1
}
# Display age
cat("Your age is:", age, "years\n")
