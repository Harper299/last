# DATA AGGREGATION IN R
# Get number of records
n <- as.integer(readline("Enter number of records: "))
# Initialize vectors
group <- character(n)
value <- numeric(n)
# Read data from user
for (i in 1:n) {
 group[i] <- readline(paste("Enter group for record", i, ": "))
 value[i] <- as.numeric(readline(paste("Enter value for record", i, ": ")))
}
# Create data frame
df <- data.frame(Group = group, Value = value)
cat("\nOriginal Data Frame:\n")
print(df)
# Aggregate - Sum
cat("\nAggregated Data (Sum):\n")
print(aggregate(Value ~ Group, data = df, FUN = sum))
# Aggregate - Mean
cat("\nAggregated Data (Mean):\n")
print(aggregate(Value ~ Group, data = df, FUN = mean))
# Aggregate - Count
cat("\nAggregated Data (Count):\n")
print(aggregate(Value ~ Group, data = df, FUN = length))

OUTPUT :
Enter number of records: 5
Enter group for record 1 : A
Enter value for record 1 : 10
Enter group for record 2 : B
Enter value for record 2 : 20
Enter group for record 3 : A
Enter value for record 3 : 30
Enter group for record 4 : B
Enter value for record 4 : 40
Enter group for record 5 : A
Enter value for record 5 : 50
Original Data Frame:
 Group Value
1 A 10
2 B 20
3 A 30
4 B 40
5 A 50
Aggregated Data (Sum):
 Group Value
1 A 90
2 B 60
Aggregated Data (Mean):
 Group Value
1 A 30
2 B 30

Aggregated Data (Count):
 Group Value
1 A 3
2 B 2
