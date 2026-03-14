# CHARACTER MANIPULATION IN R
# Get input string
text <- readline(prompt = "Enter a string: ")
# Display original string
cat("\nOriginal String:\n", text, "\n")
# Length of string
cat("\nLength of String:\n")
print(nchar(text))
# Convert to uppercase
cat("\nUppercase:\n")
print(toupper(text))
# Convert to lowercase
cat("\nLowercase:\n")
print(tolower(text))
# Extract substring
start <- as.integer(readline("Enter starting position: "))
end <- as.integer(readline("Enter ending position: "))
cat("\nSubstring:\n")
print(substr(text, start, end))
# Replace characters
old <- readline("Enter character to replace: ")
new <- readline("Enter new character: ")
cat("\nAfter Replacement:\n")
print(gsub(old, new, text))
# Split string
cat("\nSplit String:\n")
print(strsplit(text, " "))

OUTPUT 
Enter a string: Data Science
Original String:
Data Science
Length of String:
[1] 12
Uppercase:
[1] "DATA SCIENCE"
Lowercase:
[1] "data science"
Enter starting position: 1
Enter ending position: 4
Substring:
[1] "Data"
Enter character to replace: Science
Enter new character: Analysis
After Replacement:
[1] "Data Analysis"
Split String:
[[1]]
[1] "Data" "Science"
