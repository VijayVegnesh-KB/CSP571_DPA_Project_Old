getwd()
setwd("D:/IITC/Sem 1/Data Prep and Analysis/Project_Work/archive")

# Read the data with both space and comma as separators
clevelanddata <- read.csv('cleveland_data.csv', header = FALSE, as.is = TRUE, sep = "")

View(clevelanddata)

# Transpose the data to make it a single row
clevelanddata_single_row <- t(clevelanddata)

# Find the indices where "name" is present
name_indices <- grep("name", clevelanddata_single_row)

# Remove "name" and the next three fields
clevelanddata_combined_cleaned <- clevelanddata_single_row[-c(name_indices + 1, name_indices + 2, name_indices + 3)]

# Create a matrix with 76 columns
clevelanddata_matrix <- matrix(clevelanddata_combined_cleaned, ncol = 77, byrow = TRUE)

# Convert the matrix to a data frame
clevelanddata_table <- as.data.frame(clevelanddata_matrix)

# Assuming clevelanddata_table is your dataframe
clevelanddata_table <- clevelanddata_table[, -8]

# Add column names to the dataframe
colnames(clevelanddata_table) <- c("id", "ccf", "age", "sex", "painloc", "painexer", "relrest", "pncaden", "cp", "trestbps", "htn", "chol", "smoke", "cigs", "years", "fbs", "dm", "famhist", "restecg", "ekgmo", "ekgday", "ekgyr", "dig", "prop", "nitr", "pro", "diuretic", "proto", "thaldur", "thaltime", "met", "thalach", "thalrest", "tpeakbps", "tpeakbpd", "dummy", "trestbpd", "exang", "xhypo", "oldpeak", "slope", "rldv5", "rldv5e", "ca", "restckm", "exerckm", "restef", "restwm", "exeref", "exerwm", "thal", "thalsev", "thalpul", "earlobe", "cmo", "cday", "cyr", "num", "lmt", "ladprox", "laddist", "diag", "cxmain", "ramus", "om1", "om2", "rcaprox", "rcadist", "lvx1", "lvx2", "lvx3", "lvx4", "lvf", "cathef", "junk", "name")

# Print the structure of the new data frame
str(clevelanddata_table)

library(dplyr)
# Inspect the new data frame using glimpse
glimpse(clevelanddata_table)

# View the new data frame
#View(clevelanddata_table)

# Read the data with both space and comma as separators
hungarian_data <- read.csv('hungarian_data.csv', header = FALSE, as.is = TRUE, sep = ",")

# View the new data frame
#View(hungarian_data)

# Transpose the data to make it a single row
hungarian_data_single_row <- t(hungarian_data)

# Find the indices where "name" is present
#name_indices <- grep("name", hungarian_data_single_row)
name_indices <- grep("\\bname\\b", hungarian_data_single_row)

# Remove "name" and the next three fields
hungariandata_combined_cleaned <- hungarian_data_single_row[-c(name_indices + 1, name_indices + 2, name_indices + 3)]

# Create a matrix with 76 columns
hungariandata_matrix <- matrix(hungariandata_combined_cleaned, ncol = 77, byrow = TRUE)

# Convert the matrix to a data frame
hungariandata_table <- as.data.frame(hungariandata_matrix)

# Assuming clevelanddata_table is your dataframe
hungariandata_table <- hungariandata_table[, -8]

# Add column names to the dataframe
colnames(hungariandata_table) <- c("id", "ccf", "age", "sex", "painloc", "painexer", "relrest", "pncaden", "cp", "trestbps", "htn", "chol", "smoke", "cigs", "years", "fbs", "dm", "famhist", "restecg", "ekgmo", "ekgday", "ekgyr", "dig", "prop", "nitr", "pro", "diuretic", "proto", "thaldur", "thaltime", "met", "thalach", "thalrest", "tpeakbps", "tpeakbpd", "dummy", "trestbpd", "exang", "xhypo", "oldpeak", "slope", "rldv5", "rldv5e", "ca", "restckm", "exerckm", "restef", "restwm", "exeref", "exerwm", "thal", "thalsev", "thalpul", "earlobe", "cmo", "cday", "cyr", "num", "lmt", "ladprox", "laddist", "diag", "cxmain", "ramus", "om1", "om2", "rcaprox", "rcadist", "lvx1", "lvx2", "lvx3", "lvx4", "lvf", "cathef", "junk", "name")

# Print the structure of the new data frame
str(hungariandata_table)

# Inspect the new data frame using glimpse
glimpse(hungariandata_table)

# View the new data frame
#View(hungariandata_table)

# Read the data with both space and comma as separators
switzerland_data <- read.csv('switzerland_data.csv', header = FALSE, as.is = TRUE, sep = ",")

# View the new data frame
#View(switzerland_data)

# Transpose the data to make it a single row
switzerland_data_single_row <- t(switzerland_data)

# Find the indices where "name" is present
#name_indices <- grep("name", switzerland_data_single_row)
name_indices <- grep("\\bname\\b", switzerland_data_single_row)

# Remove "name" and the next three fields
switzerlanddata_combined_cleaned <- switzerland_data_single_row[-c(name_indices + 1, name_indices + 2, name_indices + 3)]

# Create a matrix with 76 columns
switzerlanddata_matrix <- matrix(switzerlanddata_combined_cleaned, ncol = 77, byrow = TRUE)

# Convert the matrix to a data frame
switzerlanddata_table <- as.data.frame(switzerlanddata_matrix)

# Assuming clevelanddata_table is your dataframe
switzerlanddata_table <- switzerlanddata_table[, -8]

# Add column names to the dataframe
colnames(switzerlanddata_table) <- c("id", "ccf", "age", "sex", "painloc", "painexer", "relrest", "pncaden", "cp", "trestbps", "htn", "chol", "smoke", "cigs", "years", "fbs", "dm", "famhist", "restecg", "ekgmo", "ekgday", "ekgyr", "dig", "prop", "nitr", "pro", "diuretic", "proto", "thaldur", "thaltime", "met", "thalach", "thalrest", "tpeakbps", "tpeakbpd", "dummy", "trestbpd", "exang", "xhypo", "oldpeak", "slope", "rldv5", "rldv5e", "ca", "restckm", "exerckm", "restef", "restwm", "exeref", "exerwm", "thal", "thalsev", "thalpul", "earlobe", "cmo", "cday", "cyr", "num", "lmt", "ladprox", "laddist", "diag", "cxmain", "ramus", "om1", "om2", "rcaprox", "rcadist", "lvx1", "lvx2", "lvx3", "lvx4", "lvf", "cathef", "junk", "name")

# Print the structure of the new data frame
str(switzerlanddata_table)
library(dplyr)
# Inspect the new data frame using glimpse
glimpse(switzerlanddata_table)

# View the new data frame
#View(switzerlanddata_table)

# Read the data with both space and comma as separators
va_data <- read.csv('long-beach-va_data.csv', header = FALSE, as.is = TRUE, sep = ",")

# View the new data frame
#View(va_data)

# Transpose the data to make it a single row
va_data_single_row <- t(va_data)

# Find the indices where "name" is present
#name_indices <- grep("name", va_data_single_row)
name_indices <- grep("\\bname\\b", va_data_single_row)

# Remove "name" and the next three fields
vadata_combined_cleaned <- va_data_single_row[-c(name_indices + 1, name_indices + 2, name_indices + 3)]

# Create a matrix with 76 columns
vadata_matrix <- matrix(vadata_combined_cleaned, ncol = 77, byrow = TRUE)

# Convert the matrix to a data frame
vadata_table <- as.data.frame(vadata_matrix)

# Convert the matrix to a data frame
vadata_table <- as.data.frame(switzerlanddata_matrix)

# Assuming clevelanddata_table is your dataframe
vadata_table <- vadata_table[, -8]

# Add column names to the dataframe
colnames(vadata_table) <- c("id", "ccf", "age", "sex", "painloc", "painexer", "relrest", "pncaden", "cp", "trestbps", "htn", "chol", "smoke", "cigs", "years", "fbs", "dm", "famhist", "restecg", "ekgmo", "ekgday", "ekgyr", "dig", "prop", "nitr", "pro", "diuretic", "proto", "thaldur", "thaltime", "met", "thalach", "thalrest", "tpeakbps", "tpeakbpd", "dummy", "trestbpd", "exang", "xhypo", "oldpeak", "slope", "rldv5", "rldv5e", "ca", "restckm", "exerckm", "restef", "restwm", "exeref", "exerwm", "thal", "thalsev", "thalpul", "earlobe", "cmo", "cday", "cyr", "num", "lmt", "ladprox", "laddist", "diag", "cxmain", "ramus", "om1", "om2", "rcaprox", "rcadist", "lvx1", "lvx2", "lvx3", "lvx4", "lvf", "cathef", "junk", "name")

# Print the structure of the new data frame
str(vadata_table)

library(dplyr)
# Inspect the new data frame using glimpse
glimpse(vadata_table)

# View the new data frame
#View(vadata_table)

# Combine data frames horizontally (column-wise)
merged_df <- dplyr::bind_rows(clevelanddata_table, hungariandata_table, switzerlanddata_table, vadata_table)

# Write the merged data frame to a new CSV file
write.csv(merged_df, 'merged_file.csv', row.names = FALSE)

# Get the column names
column_names <- colnames(merged_df)

# Rearrange the columns, moving the 3rd column to the 7th position
new_order <- c(column_names[1:57], column_names[59:76], column_names[58])

# Create a new data frame with the rearranged columns
rearranged_df <- merged_df[, new_order]

# Write the rearranged data frame to a new CSV file
write.csv(rearranged_df, 'rearranged_file.csv', row.names = FALSE)

#Combined all 4 data sets (Final one for further processing)
#View(rearranged_df)

sapply(rearranged_df, class)

# Function to print unique values in each column
print_unique_values <- function(data) {
  for (col in names(data)) {
    unique_values <- unique(data[[col]])
    cat("Unique values in column", col, ":", unique_values, "\n")
  }
}

# Call the function with your dataset
print_unique_values(rearranged_df)

# Define the gibberish pattern
gibberish_pattern <- "[^A-Za-z0-9[:space:].-]"

# Load necessary libraries
library(dplyr)

# Remove gibberish symbols from all columns in the dataframe
cleaned_df <- rearranged_df %>%
  mutate_all(~ gsub(gibberish_pattern, " ", .))

# Display the cleaned dataframe
View(cleaned_df)

# Call the function with your dataset
print_unique_values(cleaned_df)

# Load necessary libraries
library(dplyr)

# Compare unique values in all columns
unique_values_df1 <- lapply(rearranged_df, unique)
unique_values_df2 <- lapply(cleaned_df, unique)

# Find set differences for each column
setdiff_values <- Map(setdiff, unique_values_df1, unique_values_df2)

# Display set differences for each column
for (i in seq_along(setdiff_values)) {
  cat("Non-alphanumeric values in", names(setdiff_values)[i], "in rearranged_df:", setdiff_values[[i]], "\n")
}

# Replace variations of -9 and blank values with NA in the entire dataframe
df_cleaned <- cleaned_df %>%
  mutate_all(~ ifelse(grepl("^\\s*-?9\\.?0*\\s*$", as.character(.)), NA, as.numeric(as.character(.))))

# Display the cleaned dataframe
#View(df_cleaned)

# Identify and extract complete cases
complete_cases_df <- df_cleaned[complete.cases(df_cleaned), ]

# Display the cleaned dataframe
View(complete_cases_df)

# Identify and extract columns without missing values
complete_columns <- df_cleaned[, colSums(!is.na(df_cleaned)) == nrow(df_cleaned)]

# Display the cleaned dataframe
#View(complete_columns)

View(df_cleaned)
#########
# Assuming 'latest_df' is your dataframe
na_counts <- colSums(is.na(df_cleaned))
sorted_na_counts <- sort(na_counts, decreasing = TRUE)
sorted_column_names <- names(sorted_na_counts)

# Print column names
print("Column Names Sorted by Number of NA's:")
print(sorted_column_names)

# Plot the number of NA's in each column
barplot(sorted_na_counts, names.arg = sorted_column_names,
        col = "skyblue", main = "Number of NA's in Each Column",
        xlab = "Columns", ylab = "Number of NA's")
##################

# Assuming 'latest_df' is your dataframe
na_counts <- colSums(is.na(df_cleaned))
total_rows <- nrow(df_cleaned)

# Calculate the percentage of NA's in each column
na_percentages <- (na_counts / total_rows) * 100
sorted_na_percentages <- sort(na_percentages, decreasing = TRUE)
sorted_column_names <- names(sorted_na_percentages)

# Print column names
print("Column Names Sorted by Percentage of NA's:")
print(sorted_column_names)

# Plot the percentage of NA's in each column
barplot(sorted_na_percentages, names.arg = sorted_column_names,
        col = "skyblue", main = "Percentage of NA's in Each Column",
        xlab = "Columns", ylab = "Percentage of NA's")

##################

# Assuming 'latest_df' is your dataframe
na_counts <- colSums(is.na(df_cleaned))
sorted_na_counts <- sort(na_counts, decreasing = TRUE)
sorted_column_names <- names(sorted_na_counts)

# Print column names vertically
par(mar = c(10, 4, 2, 1))  # Adjust the margin to fit vertical names
barplot(sorted_na_counts, names.arg = sorted_column_names,
        col = "skyblue", main = "Number of NA's in Each Column",
        las = 2, cex.names = 0.7, xlab = "Columns", ylab = "Number of NA's")

#########

# Assuming 'latest_df' is your dataframe
na_counts <- colSums(is.na(df_cleaned))
total_rows <- nrow(df_cleaned)

# Calculate the percentage of NA's in each column
na_percentages <- (na_counts / total_rows) * 100
sorted_na_percentages <- sort(na_percentages, decreasing = TRUE)
sorted_column_names <- names(sorted_na_percentages)

# Print column names vertically
par(mar = c(10, 4, 2, 1))  # Adjust the margin to fit vertical names
barplot(sorted_na_percentages, names.arg = sorted_column_names,
        col = "skyblue", main = "Percentage of NA's in Each Column",
        las = 2, cex.names = 0.7, xlab = "Columns", ylab = "Percentage of NA's",
          ylim = c(0, 100))

#-----------------#
# Calculate the percentage of NA in each column
na_percentage <- colMeans(is.na(df_cleaned)) * 100

# Display the percentage of NA for each column
#View(na_percentage)

# Identify columns with percentage of NA greater than the threshold
columns_to_remove <- names(na_percentage[na_percentage > 30])

# Remove columns with high percentage of NA
df_cleaned_dropped_cols <- df_cleaned[, !names(df_cleaned) %in% columns_to_remove]

# Display the cleaned dataframe
#View(df_cleaned_dropped_cols)

# Number of columns before dropping columns
before_cleaned_num_columns <- ncol(df_cleaned)
cat("\nNumber of columns in the cleaned dataframe:", before_cleaned_num_columns, "\n")

# Number of columns after dropping columns
after_cleaned_num_columns <- ncol(df_cleaned_dropped_cols)
cat("\nNumber of columns in the cleaned dataframe:", after_cleaned_num_columns, "\n")

#---------------#
#-----------#
# Set the threshold for percentage of NA
threshold <- 30

# Display the number of rows in the original dataframe
original_num_rows <- nrow(df_cleaned_dropped_cols)
cat("Number of rows in the original dataframe:", original_num_rows, "\n")

# Calculate the percentage of NA in each row
na_percentage_rows <- rowMeans(is.na(df_cleaned_dropped_cols)) * 100

# Display the percentage of NA for each rows
print(na_percentage_rows)

# Identify rows with percentage of NA greater than the threshold
rows_to_remove <- which(na_percentage_rows >= threshold)

# Print the percentage of NA for selected rows
cat("Percentage of NA in rows greater than or equal to", threshold, ":\n")
for (row_index in rows_to_remove) {
  cat("Row", row_index, ":", na_percentage_rows[row_index], "%\n")
}

# Remove rows with high percentage of NA
df_cleaned_rows <- df_cleaned_dropped_cols[-rows_to_remove, ]

# Display the number of rows in the cleaned dataframe
cleaned_num_rows <- nrow(df_cleaned_rows)

# Display the cleaned dataframe
#View(df_cleaned_rows)

# Number of columns before dropping columns
before_cleaned_num_rows <- nrow(df_cleaned_dropped_cols)
cat("\nNumber of rows in the cleaned dataframe:", before_cleaned_num_rows, "\n")

# Number of columns after dropping columns
after_cleaned_num_rows <- nrow(df_cleaned_rows)
cat("\nNumber of rows in the cleaned dataframe:", after_cleaned_num_rows, "\n")

#--------------------#

modified_df <- df_cleaned_rows

#--------------#
# Assuming 'data' is your dataframe
# Check for duplicate rows
duplicate_rows <- duplicated(modified_df)

# Print the indices of duplicate rows
print(which(duplicate_rows))

modified_df <- unique(modified_df)
#--------------#


# Display the cleaned dataframe
#View(modified_df)

# Export the dataframe to a CSV file
#write.csv(modified_df, file = "D:/IITC/Sem 1/Data Prep and Analysis/Project_Work/archive/modified_df.csv", row.names = FALSE)

#------------22-11-2023---#
#Since Id, name, ccf are least significant, we are dropping them based on mannual anzlysis
column_names_todrop_mannual <- c("id", "ccf", "cday", "ekgday", "ekgmo", "cmo", "trestbpd")

modified_df_new <- modified_df[, !colnames(modified_df) %in% column_names_todrop_mannual]

#View(modified_df_new)

# Export the dataframe to a CSV file
##write.csv(modified_df_new, file = "D:/IITC/Sem 1/Data Prep and Analysis/Project_Work/archive/modified_df_new.csv", row.names = FALSE)

# Check if there is no blank values present
cat("Count if any blank values present:", sum(modified_df_new == ""), "\n")

# Lets do analysis for age
cat("Unique values in Age column:", unique(modified_df_new$age), "\n")
cat("Minimum value in Age column:", min(modified_df_new$age, na.rm = TRUE), "\n")
cat("Maximum value in Age column:", max(modified_df_new$age, na.rm = TRUE), "\n")
cat("Number of NA values in Age column:", sum(is.na(modified_df_new$age)), "\n")

old_data_df <- modified_df_new
# Assuming 'modified_df_new' is your dataframe
# Assuming 'age' is a numerical column


# Assuming modified_df_new is your dataframe
unique_values_age <- unique(modified_df_new$age)

# Sort the unique values
sorted_unique_values_age <- sort(unique_values_age)

# Display the sorted unique values
cat("Sorted Unique Values of age:\n")
print(sorted_unique_values_age)

modified_df1 <- modified_df_new

# Replace NAs in the "age" column with the mean
mean_age <- mean(modified_df_new$age, na.rm = TRUE)
modified_df_new$age[is.na(modified_df_new$age)] <- mean_age

# Display the modified dataframe
#View(modified_df_new)

# Lets do analysis for age
cat("Unique values in Age column:", unique(modified_df_new$age), "\n")
cat("Minimum value in Age column:", min(modified_df_new$age, na.rm = TRUE), "\n")
cat("Maximum value in Age column:", max(modified_df_new$age, na.rm = TRUE), "\n")
cat("Number of NA values in Age column:", sum(is.na(modified_df_new$age)), "\n")

# Load necessary library
library(ggplot2)

# Create a density plot for 'age' before and after replacing NAs
ggplot() +
  geom_density(aes(x = modified_df1$age), fill = "lightblue", alpha = 0.5, color = "black", linetype = "dashed") +
  geom_density(aes(x = modified_df_new$age), fill = "lightgreen", alpha = 0.5, color = "blue", linetype = "dotted") +
  labs(title = "Density Plot - Before and After NA Replacement", x = "Age", y = "Density") +
  theme_minimal()



# Analysis for sex column
cat("Unique values in Sex column:", unique(modified_df_new$sex), "\n")
cat("Are the values valid (only 0 or 1):", all(unique(modified_df_new$sex) %in% c(0, 1)), "\n")
cat("Number of NA values in Sex column:", sum(is.na(modified_df_new$sex)), "\n")

# Assuming modified_df_new is your dataframe
sex_values <- modified_df_new$sex

# Count the instances of values 237 and 80
count_237 <- sum(sex_values == 237, na.rm = TRUE)
count_80 <- sum(sex_values == 80, na.rm = TRUE)

# Display the counts
cat("Number of instances of value 237 in the Sex column:", count_237, "\n")
cat("Number of instances of value 80 in the Sex column:", count_80, "\n")


# Count the instances of values 237 and 80
count_1 <- sum(sex_values == 1, na.rm = TRUE)
count_0 <- sum(sex_values == 0, na.rm = TRUE)

# Display the counts
cat("Number of instances of value 1 in the Sex column:", count_1, "\n")
cat("Number of instances of value 0 in the Sex column:", count_0, "\n")

# Assuming modified_df_new is your dataframe
sex_values <- modified_df_new$sex

# Define a function to calculate the mode
Mode <- function(x) {
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
}

# Calculate the mode of the "sex" column
mode_sex <- Mode(sex_values)

# Replace NAs with the mode
sex_values[is.na(sex_values)] <- mode_sex

# Ensure values are either 0 or 1
sex_values <- ifelse(sex_values == 0, 0, 1)

# Update the dataframe with the modified "sex" column
modified_df_new$sex <- sex_values

# Display the modified dataframe
View(modified_df_new)

# Analysis for sex column
cat("Unique values in sex column:", unique(modified_df_new$sex), "\n")
cat("Are the values valid (only 0 or 1):", all(unique(modified_df_new$sex) %in% c(0, 1)), "\n")
cat("Number of NA values in sex column:", sum(is.na(modified_df_new$sex)), "\n")

# Analysis for cp column
cat("Unique values in cp column:", unique(modified_df_new$cp), "\n")
cat("Are the values valid (only 1, 2, 3, 4):", all(unique(modified_df_new$cp) %in% c(1, 2, 3, 4)), "\n")
cat("Number of NA values in cp column:", sum(is.na(modified_df_new$cp)), "\n")

backup_modified_df_new <- modified_df_new
# Lets do analysis for trestbps
cat("Unique values in trestbps column:", unique(modified_df_new$trestbps), "\n")
cat("Minimum value in trestbps column:", min(modified_df_new$trestbps, na.rm = TRUE), "\n")
cat("Maximum value in trestbps column:", max(modified_df_new$trestbps, na.rm = TRUE), "\n")
cat("Number of NA values in trestbps column:", sum(is.na(modified_df_new$trestbps)), "\n")

# Assuming modified_df_new is your dataframe
trestbps_values <- modified_df_new$trestbps

# Calculate the mean of the "trestbps" column
mean_trestbps <- mean(trestbps_values, na.rm = TRUE)

# Replace NA values with the mean
trestbps_values[is.na(trestbps_values)] <- mean_trestbps

# Update the dataframe with the modified "trestbps" column
modified_df_new$trestbps <- trestbps_values

# Display the modified dataframe
cat("Modified Dataframe:\n")
#View(modified_df_new)

# Lets do analysis for trestbps
cat("Unique values in trestbps column:", unique(modified_df_new$trestbps), "\n")
cat("Minimum value in trestbps column:", min(modified_df_new$trestbps, na.rm = TRUE), "\n")
cat("Maximum value in trestbps column:", max(modified_df_new$trestbps, na.rm = TRUE), "\n")
cat("Number of NA values in trestbps column:", sum(is.na(modified_df_new$trestbps)), "\n")

# Lets do analysis for htn
cat("Unique values in htn column:", unique(modified_df_new$htn), "\n")
cat("Number of NA values in htn column:", sum(is.na(modified_df_new$htn)), "\n")

# Assuming modified_df_new is your dataframe
htn_values <- modified_df_new$htn

# Calculate the mode of the "htn" column
mode_htn <- as.character(names(sort(table(htn_values), decreasing = TRUE)[1]))

# Replace NA values with the mode
htn_values[is.na(htn_values)] <- mode_htn

# Update the dataframe with the modified "htn" column
modified_df_new$htn <- htn_values

# Display the modified dataframe
cat("Modified Dataframe:\n")
#View(modified_df_new)

# Lets do analysis for htn
cat("Unique values in htn column:", unique(modified_df_new$htn), "\n")
cat("Number of NA values in htn column:", sum(is.na(modified_df_new$htn)), "\n")

# Lets do analysis for chol
cat("Unique values in chol column:", unique(modified_df_new$chol), "\n")
cat("Minimum value in chol column:", min(modified_df_new$chol, na.rm = TRUE), "\n")
cat("Maximum value in chol column:", max(modified_df_new$chol, na.rm = TRUE), "\n")
cat("Number of NA values in chol column:", sum(is.na(modified_df_new$chol)), "\n")

# Assuming modified_df_new is your dataframe
chol_values <- modified_df_new$chol

# Calculate the mean of the "chol" column
mean_chol <- mean(chol_values, na.rm = TRUE)

# Replace NA values with the mean
chol_values[is.na(chol_values)] <- mean_chol

# Update the dataframe with the modified "chol" column
modified_df_new$chol <- chol_values

# Display the modified dataframe
cat("Modified Dataframe:\n")
#View(modified_df_new)

# Lets do analysis for chol
cat("Unique values in chol column:", unique(modified_df_new$chol), "\n")
cat("Minimum value in chol column:", min(modified_df_new$chol, na.rm = TRUE), "\n")
cat("Maximum value in chol column:", max(modified_df_new$chol, na.rm = TRUE), "\n")
cat("Number of NA values in chol column:", sum(is.na(modified_df_new$chol)), "\n")

# Analysis for fbs column
cat("Unique values in fbs column:", unique(modified_df_new$fbs), "\n")
cat("Are the values valid (only 0 or 1):", all(unique(modified_df_new$fbs) %in% c(0, 1)), "\n")
cat("Number of NA values in fbs column:", sum(is.na(modified_df_new$fbs)), "\n")

# Assuming modified_df_new is your dataframe
fbs_values <- modified_df_new$fbs

# Calculate the ratio of 0s and 1s in the non-missing values
ratio <- sum(fbs_values == 0, na.rm = TRUE) / sum(fbs_values == 1, na.rm = TRUE)

# Replace NA values based on the calculated ratio
fbs_values[is.na(fbs_values)] <- ifelse(runif(sum(is.na(fbs_values))) < ratio, 0, 1)

# Update the dataframe with the modified "fbs" column
modified_df_new$fbs <- fbs_values

# Analysis for fbs column
cat("Unique values in fbs column:", unique(modified_df_new$fbs), "\n")
cat("Are the values valid (only 0 or 1):", all(unique(modified_df_new$fbs) %in% c(0, 1)), "\n")
cat("Number of NA values in fbs column:", sum(is.na(modified_df_new$fbs)), "\n")

# Analysis for restecg column
cat("Unique values in restecg column:", unique(modified_df_new$restecg), "\n")
cat("Are the values valid (only 0, 1, 2):", all(unique(modified_df_new$restecg) %in% c(0, 1, 2)), "\n")
cat("Number of NA values in restecg column:", sum(is.na(modified_df_new$restecg)), "\n")

# Assuming modified_df_new is your dataframe
restecg_values <- modified_df_new$restecg

# Calculate the mode of the "restecg" column
mode_restecg <- as.character(names(sort(table(restecg_values), decreasing = TRUE)[1]))

# Replace NA values with the mode
restecg_values[is.na(restecg_values)] <- mode_restecg

# Update the dataframe with the modified "restecg" column
modified_df_new$restecg <- restecg_values

# Display the modified dataframe
cat("Modified Dataframe:\n")
#View(modified_df_new)

# Analysis for restecg column
cat("Unique values in restecg column:", unique(modified_df_new$restecg), "\n")
cat("Are the values valid (only 0, 1, 2):", all(unique(modified_df_new$restecg) %in% c(0, 1, 2)), "\n")
cat("Number of NA values in restecg column:", sum(is.na(modified_df_new$restecg)), "\n")

# Lets do analysis for ekgmo
cat("Unique values in ekgmo column:", unique(modified_df_new$ekgmo), "\n")
cat("Number of NA values in ekgmo column:", sum(is.na(modified_df_new$ekgmo)), "\n")

# Assuming modified_df_new is your dataframe
ekgmo_values <- modified_df_new$ekgmo

# Calculate the mode of the "ekgmo" column
mode_ekgmo <- as.character(names(sort(table(ekgmo_values), decreasing = TRUE)[1]))

# Replace NA values with the mode
ekgmo_values[is.na(ekgmo_values)] <- mode_ekgmo

# Update the dataframe with the modified "ekgmo" column
modified_df_new$ekgmo <- ekgmo_values

# Display the modified dataframe
cat("Modified Dataframe:\n")
#View(modified_df_new)

# Lets do analysis for ekgmo
cat("Unique values in ekgmo column:", unique(modified_df_new$ekgmo), "\n")
cat("Number of NA values in ekgmo column:", sum(is.na(modified_df_new$ekgmo)), "\n")

# Lets do analysis for ekgday
#cat("Unique values in ekgday column:", unique(modified_df_new$ekgday), "\n")
#cat("Number of NA values in ekgday column:", sum(is.na(modified_df_new$ekgday)), "\n")

# Assuming modified_df_new is your dataframe
#ekgday_values <- modified_df_new$ekgday

# Calculate the mode of the "ekgday" column
#mode_ekgday <- as.character(names(sort(table(ekgday_values), decreasing = TRUE)[1]))

# Replace NA values with the mode
#ekgday_values[is.na(ekgday_values)] <- mode_ekgday

# Update the dataframe with the modified "ekgday" column
#modified_df_new$ekgday <- ekgday_values

# Lets do analysis for ekgday
#cat("Unique values in ekgday column:", unique(modified_df_new$ekgday), "\n")
#cat("Number of NA values in ekgday column:", sum(is.na(modified_df_new$ekgday)), "\n")

# Lets do analysis for ekgyr
cat("Unique values in ekgyr column:", unique(modified_df_new$ekgyr), "\n")
cat("Number of NA values in ekgyr column:", sum(is.na(modified_df_new$ekgyr)), "\n")

# Analysis for dig column
cat("Unique values in dig column:", unique(modified_df_new$dig), "\n")
cat("Are the values valid (only 0, 1):", all(unique(modified_df_new$dig) %in% c(0, 1)), "\n")
cat("Number of NA values in dig column:", sum(is.na(modified_df_new$dig)), "\n")

# Assuming modified_df_new is your dataframe
dig_values <- modified_df_new$dig

# Calculate the mode of the "dig" column
mode_dig <- as.character(names(sort(table(dig_values), decreasing = TRUE)[1]))

# Replace NA values with the mode
dig_values[is.na(dig_values)] <- mode_dig

# Update the dataframe with the modified "dig" column
modified_df_new$dig <- dig_values

# Analysis for dig column
cat("Unique values in dig column:", unique(modified_df_new$dig), "\n")
cat("Are the values valid (only 0, 1):", all(unique(modified_df_new$dig) %in% c(0, 1)), "\n")
cat("Number of NA values in dig column:", sum(is.na(modified_df_new$dig)), "\n")

# Analysis for prop column
cat("Unique values in prop column:", unique(modified_df_new$prop), "\n")
cat("Are the values valid (only 0, 1):", all(unique(modified_df_new$prop) %in% c(0, 1)), "\n")
cat("Number of NA values in prop column:", sum(is.na(modified_df_new$prop)), "\n")

# Assuming modified_df_new is your dataframe
prop_values <- modified_df_new$prop

# Calculate the mode of the "prop" column
mode_prop <- as.character(names(sort(table(prop_values), decreasing = TRUE)[1]))

# Replace NA values with the mode
prop_values[is.na(prop_values)] <- mode_prop

# Update the dataframe with the modified "prop" column
modified_df_new$prop <- prop_values

# Analysis for prop column
cat("Unique values in prop column:", unique(modified_df_new$prop), "\n")
cat("Are the values valid (only 0, 1):", all(unique(modified_df_new$prop) %in% c(0, 1)), "\n")
cat("Number of NA values in prop column:", sum(is.na(modified_df_new$prop)), "\n")

# Analysis for nitr column
cat("Unique values in nitr column:", unique(modified_df_new$nitr), "\n")
cat("Are the values valid (only 0, 1):", all(unique(modified_df_new$nitr) %in% c(0, 1)), "\n")
cat("Number of NA values in nitr column:", sum(is.na(modified_df_new$nitr)), "\n")

# Assuming modified_df_new is your dataframe
nitr_values <- modified_df_new$nitr

# Calculate the mode of the "nitr" column
mode_nitr <- as.character(names(sort(table(nitr_values), decreasing = TRUE)[1]))

# Replace NA values with the mode
nitr_values[is.na(nitr_values)] <- mode_nitr

# Update the dataframe with the modified "nitr" column
modified_df_new$nitr <- nitr_values

# Analysis for nitr column
cat("Unique values in nitr column:", unique(modified_df_new$nitr), "\n")
cat("Are the values valid (only 0, 1):", all(unique(modified_df_new$nitr) %in% c(0, 1)), "\n")
cat("Number of NA values in nitr column:", sum(is.na(modified_df_new$nitr)), "\n")

# Analysis for pro column
cat("Unique values in pro column:", unique(modified_df_new$pro), "\n")
cat("Are the values valid (only 0, 1):", all(unique(modified_df_new$pro) %in% c(0, 1)), "\n")
cat("Number of NA values in pro column:", sum(is.na(modified_df_new$pro)), "\n")

# Assuming modified_df_new is your dataframe
pro_values <- modified_df_new$pro

# Calculate the mode of the "pro" column
mode_pro <- as.character(names(sort(table(pro_values), decreasing = TRUE)[1]))

# Replace NA values with the mode
pro_values[is.na(pro_values)] <- mode_pro

# Update the dataframe with the modified "pro" column
modified_df_new$pro <- pro_values

# Analysis for pro column
cat("Unique values in pro column:", unique(modified_df_new$pro), "\n")
cat("Are the values valid (only 0, 1):", all(unique(modified_df_new$pro) %in% c(0, 1)), "\n")
cat("Number of NA values in pro column:", sum(is.na(modified_df_new$pro)), "\n")

# Analysis for diuretic column
cat("Unique values in diuretic column:", unique(modified_df_new$diuretic), "\n")
cat("Are the values valid (only 0, 1):", all(unique(modified_df_new$diuretic) %in% c(0, 1)), "\n")
cat("Number of NA values in diuretic column:", sum(is.na(modified_df_new$diuretic)), "\n")

# Assuming modified_df_new is your dataframe
diuretic_values <- modified_df_new$diuretic

# Calculate the mode of the "diuretic" column
mode_diuretic <- as.character(names(sort(table(diuretic_values), decreasing = TRUE)[1]))

# Replace NA values with the mode
diuretic_values[is.na(diuretic_values)] <- mode_diuretic

# Update the dataframe with the modified "diuretic" column
modified_df_new$diuretic <- diuretic_values

# Analysis for diuretic column
cat("Unique values in diuretic column:", unique(modified_df_new$diuretic), "\n")
cat("Are the values valid (only 0, 1):", all(unique(modified_df_new$diuretic) %in% c(0, 1)), "\n")
cat("Number of NA values in diuretic column:", sum(is.na(modified_df_new$diuretic)), "\n")

# Analysis for proto column
cat("Unique values in proto column:", unique(modified_df_new$proto), "\n")
cat("Are the values valid (only 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12):", all(unique(modified_df_new$proto) %in% c(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12)), "\n")
cat("Number of NA values in proto column:", sum(is.na(modified_df_new$proto)), "\n")

# Assuming modified_df_new is your dataframe
proto_values <- modified_df_new$proto

# Calculate the mode of the "proto" column
mode_proto <- as.character(names(sort(table(proto_values), decreasing = TRUE)[1]))

# Replace NA values with the mode
proto_values[is.na(proto_values)] <- mode_proto

# Update the dataframe with the modified "proto" column
modified_df_new$proto <- proto_values

# Analysis for proto column
cat("Unique values in proto column:", unique(modified_df_new$proto), "\n")
cat("Are the values valid (only 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12):", all(unique(modified_df_new$proto) %in% c(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12)), "\n")
cat("Number of NA values in proto column:", sum(is.na(modified_df_new$proto)), "\n")

# Lets do analysis for thaldur
cat("Unique values in thaldur column:", unique(modified_df_new$thaldur), "\n")
cat("Minimum value in thaldur column:", min(modified_df_new$thaldur, na.rm = TRUE), "\n")
cat("Maximum value in thaldur column:", max(modified_df_new$thaldur, na.rm = TRUE), "\n")
cat("Number of NA values in thaldur column:", sum(is.na(modified_df_new$thaldur)), "\n")

# Assuming modified_df_new is your dataframe
thaldur_values <- modified_df_new$thaldur

# Calculate the mean of the "thaldur" column
mean_thaldur <- mean(thaldur_values, na.rm = TRUE)

# Replace NA values with the mean
thaldur_values[is.na(thaldur_values)] <- mean_thaldur

# Update the dataframe with the modified "thaldur" column
modified_df_new$thaldur <- thaldur_values

# Lets do analysis for thaldur
cat("Unique values in thaldur column:", unique(modified_df_new$thaldur), "\n")
cat("Minimum value in thaldur column:", min(modified_df_new$thaldur, na.rm = TRUE), "\n")
cat("Maximum value in thaldur column:", max(modified_df_new$thaldur, na.rm = TRUE), "\n")
cat("Number of NA values in thaldur column:", sum(is.na(modified_df_new$thaldur)), "\n")

# Lets do analysis for met
cat("Unique values in met column:", unique(modified_df_new$met), "\n")
cat("Minimum value in met column:", min(modified_df_new$met, na.rm = TRUE), "\n")
cat("Maximum value in met column:", max(modified_df_new$met, na.rm = TRUE), "\n")
cat("Number of NA values in met column:", sum(is.na(modified_df_new$met)), "\n")

# Assuming modified_df_new is your dataframe
met_values <- modified_df_new$met

# Calculate the mode of the "met" column
mode_met <- as.character(names(sort(table(met_values), decreasing = TRUE)[1]))

# Replace NA values with the mode
met_values[is.na(met_values)] <- mode_met

# Update the dataframe with the modified "met" column
modified_df_new$met <- met_values

# Lets do analysis for met
cat("Unique values in met column:", unique(modified_df_new$met), "\n")
cat("Minimum value in met column:", min(modified_df_new$met, na.rm = TRUE), "\n")
cat("Maximum value in met column:", max(modified_df_new$met, na.rm = TRUE), "\n")
cat("Number of NA values in met column:", sum(is.na(modified_df_new$met)), "\n")

# Lets do analysis for thalach
cat("Unique values in thalach column:", unique(modified_df_new$thalach), "\n")
cat("Minimum value in thalach column:", min(modified_df_new$thalach, na.rm = TRUE), "\n")
cat("Maximum value in thalach column:", max(modified_df_new$thalach, na.rm = TRUE), "\n")
cat("Number of NA values in thalach column:", sum(is.na(modified_df_new$thalach)), "\n")

# Assuming modified_df_new is your dataframe
thalach_values <- modified_df_new$thalach

# Calculate the mean of the "thalach" column
mean_thalach <- mean(thalach_values, na.rm = TRUE)

# Replace NA values with the mean
thalach_values[is.na(thalach_values)] <- mean_thalach

# Update the dataframe with the modified "thalach" column
modified_df_new$thalach <- thalach_values

# Lets do analysis for thalach
cat("Unique values in thalach column:", unique(modified_df_new$thalach), "\n")
cat("Minimum value in thalach column:", min(modified_df_new$thalach, na.rm = TRUE), "\n")
cat("Maximum value in thalach column:", max(modified_df_new$thalach, na.rm = TRUE), "\n")
cat("Number of NA values in thalach column:", sum(is.na(modified_df_new$thalach)), "\n")

# Lets do analysis for thalrest
cat("Unique values in thalrest column:", unique(modified_df_new$thalrest), "\n")
cat("Minimum value in thalrest column:", min(modified_df_new$thalrest, na.rm = TRUE), "\n")
cat("Maximum value in thalrest column:", max(modified_df_new$thalrest, na.rm = TRUE), "\n")
cat("Number of NA values in thalrest column:", sum(is.na(modified_df_new$thalrest)), "\n")

# Assuming modified_df_new is your dataframe
thalrest_values <- modified_df_new$thalrest

# Calculate the mean of the "thalrest" column
mean_thalrest <- mean(thalrest_values, na.rm = TRUE)

# Replace NA values with the mean
thalrest_values[is.na(thalrest_values)] <- mean_thalrest

# Update the dataframe with the modified "thalrest" column
modified_df_new$thalrest <- thalrest_values

# Lets do analysis for thalrest
cat("Unique values in thalrest column:", unique(modified_df_new$thalrest), "\n")
cat("Minimum value in thalrest column:", min(modified_df_new$thalrest, na.rm = TRUE), "\n")
cat("Maximum value in thalrest column:", max(modified_df_new$thalrest, na.rm = TRUE), "\n")
cat("Number of NA values in thalrest column:", sum(is.na(modified_df_new$thalrest)), "\n")

# Lets do analysis for tpeakbps
cat("Unique values in tpeakbps column:", unique(modified_df_new$tpeakbps), "\n")
cat("Minimum value in tpeakbps column:", min(modified_df_new$tpeakbps, na.rm = TRUE), "\n")
cat("Maximum value in tpeakbps column:", max(modified_df_new$tpeakbps, na.rm = TRUE), "\n")
cat("Number of NA values in tpeakbps column:", sum(is.na(modified_df_new$tpeakbps)), "\n")

# Assuming modified_df_new is your dataframe
tpeakbps_values <- modified_df_new$tpeakbps

# Calculate the mean of the "tpeakbps" column
mean_tpeakbps <- mean(tpeakbps_values, na.rm = TRUE)

# Replace NA values with the mean
tpeakbps_values[is.na(tpeakbps_values)] <- mean_tpeakbps

# Update the dataframe with the modified "tpeakbps" column
modified_df_new$tpeakbps <- tpeakbps_values

# Lets do analysis for tpeakbps
cat("Unique values in tpeakbps column:", unique(modified_df_new$tpeakbps), "\n")
cat("Minimum value in tpeakbps column:", min(modified_df_new$tpeakbps, na.rm = TRUE), "\n")
cat("Maximum value in tpeakbps column:", max(modified_df_new$tpeakbps, na.rm = TRUE), "\n")
cat("Number of NA values in tpeakbps column:", sum(is.na(modified_df_new$tpeakbps)), "\n")

# Lets do analysis for tpeakbpd
cat("Unique values in tpeakbpd column:", unique(modified_df_new$tpeakbpd), "\n")
cat("Minimum value in tpeakbpd column:", min(modified_df_new$tpeakbpd, na.rm = TRUE), "\n")
cat("Maximum value in tpeakbpd column:", max(modified_df_new$tpeakbpd, na.rm = TRUE), "\n")
cat("Number of NA values in tpeakbpd column:", sum(is.na(modified_df_new$tpeakbpd)), "\n")

# Assuming modified_df_new is your dataframe
tpeakbpd_values <- modified_df_new$tpeakbpd

# Calculate the mean of the "tpeakbpd" column
mean_tpeakbpd <- mean(tpeakbpd_values, na.rm = TRUE)

# Replace NA values with the mean
tpeakbpd_values[is.na(tpeakbpd_values)] <- mean_tpeakbpd

# Update the dataframe with the modified "tpeakbpd" column
modified_df_new$tpeakbpd <- tpeakbpd_values

# Lets do analysis for tpeakbpd
cat("Unique values in tpeakbpd column:", unique(modified_df_new$tpeakbpd), "\n")
cat("Minimum value in tpeakbpd column:", min(modified_df_new$tpeakbpd, na.rm = TRUE), "\n")
cat("Maximum value in tpeakbpd column:", max(modified_df_new$tpeakbpd, na.rm = TRUE), "\n")
cat("Number of NA values in tpeakbpd column:", sum(is.na(modified_df_new$tpeakbpd)), "\n")

# Lets do analysis for dummy
cat("Unique values in dummy column:", unique(modified_df_new$dummy), "\n")
cat("Minimum value in dummy column:", min(modified_df_new$dummy, na.rm = TRUE), "\n")
cat("Maximum value in dummy column:", max(modified_df_new$dummy, na.rm = TRUE), "\n")
cat("Number of NA values in dummy column:", sum(is.na(modified_df_new$dummy)), "\n")

# Assuming modified_df_new is your dataframe
dummy_values <- modified_df_new$dummy

# Calculate the mean of the "dummy" column
mean_dummy <- mean(dummy_values, na.rm = TRUE)

# Replace NA values with the mean
dummy_values[is.na(dummy_values)] <- mean_dummy

# Update the dataframe with the modified "dummy" column
modified_df_new$dummy <- dummy_values

# Lets do analysis for dummy
cat("Unique values in dummy column:", unique(modified_df_new$dummy), "\n")
cat("Minimum value in dummy column:", min(modified_df_new$dummy, na.rm = TRUE), "\n")
cat("Maximum value in dummy column:", max(modified_df_new$dummy, na.rm = TRUE), "\n")
cat("Number of NA values in dummy column:", sum(is.na(modified_df_new$dummy)), "\n")

# Analysis for exang column
cat("Unique values in exang column:", unique(modified_df_new$exang), "\n")
cat("Are the values valid (only 0, 1):", all(unique(modified_df_new$exang) %in% c(0, 1)), "\n")
cat("Number of NA values in exang column:", sum(is.na(modified_df_new$exang)), "\n")

# Assuming modified_df_new is your dataframe
exang_values <- modified_df_new$exang

# Calculate the mode of the "exang" column
mode_exang <- as.character(names(sort(table(exang_values), decreasing = TRUE)[1]))

# Replace NA values with the mode
exang_values[is.na(exang_values)] <- mode_exang

# Update the dataframe with the modified "exang" column
modified_df_new$exang <- exang_values

# Analysis for exang column
cat("Unique values in exang column:", unique(modified_df_new$exang), "\n")
cat("Are the values valid (only 0, 1):", all(unique(modified_df_new$exang) %in% c(0, 1)), "\n")
cat("Number of NA values in exang column:", sum(is.na(modified_df_new$exang)), "\n")

# Analysis for xhypo column
cat("Unique values in xhypo column:", unique(modified_df_new$xhypo), "\n")
cat("Are the values valid (only 0, 1):", all(unique(modified_df_new$xhypo) %in% c(0, 1)), "\n")
cat("Number of NA values in xhypo column:", sum(is.na(modified_df_new$xhypo)), "\n")

# Assuming modified_df_new is your dataframe
xhypo_values <- modified_df_new$xhypo

# Calculate the mode of the "xhypo" column
mode_xhypo <- as.character(names(sort(table(xhypo_values), decreasing = TRUE)[1]))

# Replace NA values with the mode
xhypo_values[is.na(xhypo_values)] <- mode_xhypo

# Update the dataframe with the modified "xhypo" column
modified_df_new$xhypo <- xhypo_values

# Analysis for xhypo column
cat("Unique values in xhypo column:", unique(modified_df_new$xhypo), "\n")
cat("Are the values valid (only 0, 1):", all(unique(modified_df_new$xhypo) %in% c(0, 1)), "\n")
cat("Number of NA values in xhypo column:", sum(is.na(modified_df_new$xhypo)), "\n")

# Lets do analysis for oldpeak 
cat("Unique values in oldpeak  column:", unique(modified_df_new$oldpeak), "\n")
cat("Minimum value in oldpeak  column:", min(modified_df_new$oldpeak, na.rm = TRUE), "\n")
cat("Maximum value in oldpeak  column:", max(modified_df_new$oldpeak, na.rm = TRUE), "\n")
cat("Number of NA values in oldpeak  column:", sum(is.na(modified_df_new$oldpeak)), "\n")

# Assuming modified_df_new is your dataframe
oldpeak_values <- modified_df_new$oldpeak

# Calculate the mean of the "oldpeak" column
mean_oldpeak <- mean(oldpeak_values, na.rm = TRUE)

# Replace NA values with the mean
oldpeak_values[is.na(oldpeak_values)] <- mean_oldpeak

# Update the dataframe with the modified "oldpeak" column
modified_df_new$oldpeak <- oldpeak_values

# Lets do analysis for oldpeak 
cat("Unique values in oldpeak  column:", unique(modified_df_new$oldpeak), "\n")
cat("Minimum value in oldpeak  column:", min(modified_df_new$oldpeak, na.rm = TRUE), "\n")
cat("Maximum value in oldpeak  column:", max(modified_df_new$oldpeak, na.rm = TRUE), "\n")
cat("Number of NA values in oldpeak  column:", sum(is.na(modified_df_new$oldpeak)), "\n")

# Lets do analysis for slope
cat("Unique values in slope column:", unique(modified_df_new$slope), "\n")
cat("Minimum value in slope column:", min(modified_df_new$slope, na.rm = TRUE), "\n")
cat("Maximum value in slope column:", max(modified_df_new$slope, na.rm = TRUE), "\n")
cat("Number of NA values in slope column:", sum(is.na(modified_df_new$slope)), "\n")

# Assuming modified_df_new is your dataframe
slope_values <- modified_df_new$slope

# Calculate the mode of the "slope" column
mode_slope <- as.character(names(sort(table(slope_values), decreasing = TRUE)[1]))

# Replace NA values with the mode
slope_values[is.na(slope_values)] <- mode_slope

# Update the dataframe with the modified "slope" column
modified_df_new$slope <- slope_values

# Lets do analysis for slope
cat("Unique values in slope column:", unique(modified_df_new$slope), "\n")
cat("Minimum value in slope column:", min(modified_df_new$slope, na.rm = TRUE), "\n")
cat("Maximum value in slope column:", max(modified_df_new$slope, na.rm = TRUE), "\n")
cat("Number of NA values in slope column:", sum(is.na(modified_df_new$slope)), "\n")

# Lets do analysis for rldv5
cat("Unique values in rldv5 column:", unique(modified_df_new$rldv5), "\n")
cat("Minimum value in rldv5 column:", min(modified_df_new$rldv5, na.rm = TRUE), "\n")
cat("Maximum value in rldv5 column:", max(modified_df_new$rldv5, na.rm = TRUE), "\n")
cat("Number of NA values in rldv5 column:", sum(is.na(modified_df_new$rldv5)), "\n")

# Assuming modified_df_new is your dataframe
rldv5_values <- modified_df_new$rldv5

# Calculate the mean of the "rldv5" column
mean_rldv5 <- mean(rldv5_values, na.rm = TRUE)

# Replace NA values with the mean
rldv5_values[is.na(rldv5_values)] <- mean_rldv5

# Update the dataframe with the modified "rldv5" column
modified_df_new$rldv5 <- rldv5_values

# Lets do analysis for rldv5
cat("Unique values in rldv5 column:", unique(modified_df_new$rldv5), "\n")
cat("Minimum value in rldv5 column:", min(modified_df_new$rldv5, na.rm = TRUE), "\n")
cat("Maximum value in rldv5 column:", max(modified_df_new$rldv5, na.rm = TRUE), "\n")
cat("Number of NA values in rldv5 column:", sum(is.na(modified_df_new$rldv5)), "\n")

# Lets do analysis for rldv5e
cat("Unique values in rldv5e column:", unique(modified_df_new$rldv5e), "\n")
cat("Minimum value in rldv5e column:", min(modified_df_new$rldv5e, na.rm = TRUE), "\n")
cat("Maximum value in rldv5e column:", max(modified_df_new$rldv5e, na.rm = TRUE), "\n")
cat("Number of NA values in rldv5e column:", sum(is.na(modified_df_new$rldv5e)), "\n")

# Assuming modified_df_new is your dataframe
rldv5e_values <- modified_df_new$rldv5e

# Calculate the mean of the "rldv5e" column
mean_rldv5e <- mean(rldv5e_values, na.rm = TRUE)

# Replace NA values with the mean
rldv5e_values[is.na(rldv5e_values)] <- mean_rldv5e

# Update the dataframe with the modified "rldv5e" column
modified_df_new$rldv5e <- rldv5e_values

# Lets do analysis for rldv5e
cat("Unique values in rldv5e column:", unique(modified_df_new$rldv5e), "\n")
cat("Minimum value in rldv5e column:", min(modified_df_new$rldv5e, na.rm = TRUE), "\n")
cat("Maximum value in rldv5e column:", max(modified_df_new$rldv5e, na.rm = TRUE), "\n")
cat("Number of NA values in rldv5e column:", sum(is.na(modified_df_new$rldv5e)), "\n")

# Lets do analysis for cmo
cat("Unique values in cmo column:", unique(modified_df_new$cmo), "\n")
cat("Minimum value in cmo column:", min(modified_df_new$cmo, na.rm = TRUE), "\n")
cat("Maximum value in cmo column:", max(modified_df_new$cmo, na.rm = TRUE), "\n")
cat("Number of NA values in cmo column:", sum(is.na(modified_df_new$cmo)), "\n")

# Assuming modified_df_new is your dataframe
cmo_values <- modified_df_new$cmo

# Calculate the mode of the "cmo" column
mode_cmo <- as.character(names(sort(table(cmo_values), decreasing = TRUE)[1]))

# Replace NA values with the mode
cmo_values[is.na(cmo_values)] <- mode_cmo

# Update the dataframe with the modified "cmo" column
modified_df_new$cmo <- cmo_values

# Lets do analysis for cmo
cat("Unique values in cmo column:", unique(modified_df_new$cmo), "\n")
cat("Minimum value in cmo column:", min(modified_df_new$cmo, na.rm = TRUE), "\n")
cat("Maximum value in cmo column:", max(modified_df_new$cmo, na.rm = TRUE), "\n")
cat("Number of NA values in cmo column:", sum(is.na(modified_df_new$cmo)), "\n")

# Lets do analysis for cday
#cat("Unique values in cday column:", unique(modified_df_new$cday), "\n")
#cat("Minimum value in cday column:", min(modified_df_new$cday, na.rm = TRUE), "\n")
#cat("Maximum value in cday column:", max(modified_df_new$cday, na.rm = TRUE), "\n")
#cat("Number of NA values in cday column:", sum(is.na(modified_df_new$cday)), "\n")

# Assuming modified_df_new is your dataframe
#cday_values <- modified_df_new$cday

# Calculate the mode of the "cday" column
#mode_cday <- as.character(names(sort(table(cday_values), decreasing = TRUE)[1]))

# Replace NA values with the mode
#cday_values[is.na(cday_values)] <- mode_cday

# Update the dataframe with the modified "cday" column
#modified_df_new$cday <- cday_values

# Lets do analysis for cday
#cat("Unique values in cday column:", unique(modified_df_new$cday), "\n")
#cat("Minimum value in cday column:", min(modified_df_new$cday, na.rm = TRUE), "\n")
#cat("Maximum value in cday column:", max(modified_df_new$cday, na.rm = TRUE), "\n")
#cat("Number of NA values in cday column:", sum(is.na(modified_df_new$cday)), "\n")

# Lets do analysis for cyr
cat("Unique values in cyr column:", unique(modified_df_new$cyr), "\n")
cat("Minimum value in cyr column:", min(modified_df_new$cyr, na.rm = TRUE), "\n")
cat("Maximum value in cyr column:", max(modified_df_new$cyr, na.rm = TRUE), "\n")
cat("Number of NA values in cyr column:", sum(is.na(modified_df_new$cyr)), "\n")

# Assuming modified_df_new is your dataframe
cyr_values <- modified_df_new$cyr

# Calculate the mode of the "cyr" column
mode_cyr <- as.character(names(sort(table(cyr_values), decreasing = TRUE)[1]))

# Replace NA values with the mode
cyr_values[is.na(cyr_values)] <- mode_cyr

# Update the dataframe with the modified "cyr" column
modified_df_new$cyr <- cyr_values

# Lets do analysis for cyr
cat("Unique values in cyr column:", unique(modified_df_new$cyr), "\n")
cat("Minimum value in cyr column:", min(modified_df_new$cyr, na.rm = TRUE), "\n")
cat("Maximum value in cyr column:", max(modified_df_new$cyr, na.rm = TRUE), "\n")
cat("Number of NA values in cyr column:", sum(is.na(modified_df_new$cyr)), "\n")

# Lets do analysis for ladprox
cat("Unique values in ladprox column:", unique(modified_df_new$ladprox), "\n")
cat("Minimum value in ladprox column:", min(modified_df_new$ladprox, na.rm = TRUE), "\n")
cat("Maximum value in ladprox column:", max(modified_df_new$ladprox, na.rm = TRUE), "\n")
cat("Number of NA values in ladprox column:", sum(is.na(modified_df_new$ladprox)), "\n")

# Assuming modified_df_new is your dataframe
ladprox_values <- modified_df_new$ladprox

# Calculate the mode of the "ladprox" column
mode_ladprox <- as.character(names(sort(table(ladprox_values), decreasing = TRUE)[1]))

# Replace NA values with the mode
ladprox_values[is.na(ladprox_values)] <- mode_ladprox

# Update the dataframe with the modified "ladprox" column
modified_df_new$ladprox <- ladprox_values

# Lets do analysis for ladprox
cat("Unique values in ladprox column:", unique(modified_df_new$ladprox), "\n")
cat("Minimum value in ladprox column:", min(modified_df_new$ladprox, na.rm = TRUE), "\n")
cat("Maximum value in ladprox column:", max(modified_df_new$ladprox, na.rm = TRUE), "\n")
cat("Number of NA values in ladprox column:", sum(is.na(modified_df_new$ladprox)), "\n")

# Lets do analysis for cxmain
cat("Unique values in cxmain column:", unique(modified_df_new$cxmain), "\n")
cat("Minimum value in cxmain column:", min(modified_df_new$cxmain, na.rm = TRUE), "\n")
cat("Maximum value in cxmain column:", max(modified_df_new$cxmain, na.rm = TRUE), "\n")
cat("Number of NA values in cxmain column:", sum(is.na(modified_df_new$cxmain)), "\n")

# Assuming modified_df_new is your dataframe
cxmain_values <- modified_df_new$cxmain

# Calculate the mode of the "cxmain" column
mode_cxmain <- as.character(names(sort(table(cxmain_values), decreasing = TRUE)[1]))

# Replace NA values with the mode
cxmain_values[is.na(cxmain_values)] <- mode_cxmain

# Update the dataframe with the modified "cxmain" column
modified_df_new$cxmain <- cxmain_values

# Lets do analysis for cxmain
cat("Unique values in cxmain column:", unique(modified_df_new$cxmain), "\n")
cat("Minimum value in cxmain column:", min(modified_df_new$cxmain, na.rm = TRUE), "\n")
cat("Maximum value in cxmain column:", max(modified_df_new$cxmain, na.rm = TRUE), "\n")
cat("Number of NA values in cxmain column:", sum(is.na(modified_df_new$cxmain)), "\n")

# Lets do analysis for lvx1
cat("Unique values in lvx1 column:", unique(modified_df_new$lvx1), "\n")
cat("Minimum value in lvx1 column:", min(modified_df_new$lvx1, na.rm = TRUE), "\n")
cat("Maximum value in lvx1 column:", max(modified_df_new$lvx1, na.rm = TRUE), "\n")
cat("Number of NA values in lvx1 column:", sum(is.na(modified_df_new$lvx1)), "\n")

# Assuming modified_df_new is your dataframe
lvx1_values <- modified_df_new$lvx1

# Calculate the mode of the "lvx1" column
mode_lvx1 <- as.character(names(sort(table(lvx1_values), decreasing = TRUE)[1]))

# Replace NA values with the mode
lvx1_values[is.na(lvx1_values)] <- mode_lvx1

# Update the dataframe with the modified "lvx1" column
modified_df_new$lvx1 <- lvx1_values

# Lets do analysis for lvx1
cat("Unique values in lvx1 column:", unique(modified_df_new$lvx1), "\n")
cat("Minimum value in lvx1 column:", min(modified_df_new$lvx1, na.rm = TRUE), "\n")
cat("Maximum value in lvx1 column:", max(modified_df_new$lvx1, na.rm = TRUE), "\n")
cat("Number of NA values in lvx1 column:", sum(is.na(modified_df_new$lvx1)), "\n")

# Lets do analysis for lvx2
cat("Unique values in lvx2 column:", unique(modified_df_new$lvx2), "\n")
cat("Minimum value in lvx2 column:", min(modified_df_new$lvx2, na.rm = TRUE), "\n")
cat("Maximum value in lvx2 column:", max(modified_df_new$lvx2, na.rm = TRUE), "\n")
cat("Number of NA values in lvx2 column:", sum(is.na(modified_df_new$lvx2)), "\n")

# Assuming modified_df_new is your dataframe
lvx2_values <- modified_df_new$lvx2

# Calculate the mode of the "lvx2" column
mode_lvx2 <- as.character(names(sort(table(lvx2_values), decreasing = TRUE)[1]))

# Replace NA values with the mode
lvx2_values[is.na(lvx2_values)] <- mode_lvx2

# Update the dataframe with the modified "lvx2" column
modified_df_new$lvx2 <- lvx2_values

# Lets do analysis for lvx2
cat("Unique values in lvx2 column:", unique(modified_df_new$lvx2), "\n")
cat("Minimum value in lvx2 column:", min(modified_df_new$lvx2, na.rm = TRUE), "\n")
cat("Maximum value in lvx2 column:", max(modified_df_new$lvx2, na.rm = TRUE), "\n")
cat("Number of NA values in lvx2 column:", sum(is.na(modified_df_new$lvx2)), "\n")

# Lets do analysis for lvx3
cat("Unique values in lvx3 column:", unique(modified_df_new$lvx3), "\n")
cat("Minimum value in lvx3 column:", min(modified_df_new$lvx3, na.rm = TRUE), "\n")
cat("Maximum value in lvx3 column:", max(modified_df_new$lvx3, na.rm = TRUE), "\n")
cat("Number of NA values in lvx3 column:", sum(is.na(modified_df_new$lvx3)), "\n")

# Assuming modified_df_new is your dataframe
lvx3_values <- modified_df_new$lvx3

# Calculate the mode of the "lvx3" column
mode_lvx3 <- as.character(names(sort(table(lvx3_values), decreasing = TRUE)[1]))

# Replace NA values with the mode
lvx3_values[is.na(lvx3_values)] <- mode_lvx3

# Update the dataframe with the modified "lvx3" column
modified_df_new$lvx3 <- lvx3_values

# Lets do analysis for lvx3
cat("Unique values in lvx3 column:", unique(modified_df_new$lvx3), "\n")
cat("Minimum value in lvx3 column:", min(modified_df_new$lvx3, na.rm = TRUE), "\n")
cat("Maximum value in lvx3 column:", max(modified_df_new$lvx3, na.rm = TRUE), "\n")
cat("Number of NA values in lvx3 column:", sum(is.na(modified_df_new$lvx3)), "\n")

# Lets do analysis for lvx4
cat("Unique values in lvx4 column:", unique(modified_df_new$lvx4), "\n")
cat("Minimum value in lvx4 column:", min(modified_df_new$lvx4, na.rm = TRUE), "\n")
cat("Maximum value in lvx4 column:", max(modified_df_new$lvx4, na.rm = TRUE), "\n")
cat("Number of NA values in lvx4 column:", sum(is.na(modified_df_new$lvx4)), "\n")

# Assuming modified_df_new is your dataframe
lvx4_values <- modified_df_new$lvx4

# Calculate the mode of the "lvx4" column
mode_lvx4 <- as.character(names(sort(table(lvx4_values), decreasing = TRUE)[1]))

# Replace NA values with the mode
lvx4_values[is.na(lvx4_values)] <- mode_lvx4

# Update the dataframe with the modified "lvx4" column
modified_df_new$lvx4 <- lvx4_values

# Lets do analysis for lvx4
cat("Unique values in lvx4 column:", unique(modified_df_new$lvx4), "\n")
cat("Minimum value in lvx4 column:", min(modified_df_new$lvx4, na.rm = TRUE), "\n")
cat("Maximum value in lvx4 column:", max(modified_df_new$lvx4, na.rm = TRUE), "\n")
cat("Number of NA values in lvx4 column:", sum(is.na(modified_df_new$lvx4)), "\n")

# Lets do analysis for lvf
cat("Unique values in lvf column:", unique(modified_df_new$lvf), "\n")
cat("Minimum value in lvf column:", min(modified_df_new$lvf, na.rm = TRUE), "\n")
cat("Maximum value in lvf column:", max(modified_df_new$lvf, na.rm = TRUE), "\n")
cat("Number of NA values in lvf column:", sum(is.na(modified_df_new$lvf)), "\n")

# Assuming modified_df_new is your dataframe
lvf_values <- modified_df_new$lvf

# Calculate the mode of the "lvf" column
mode_lvf <- as.character(names(sort(table(lvf_values), decreasing = TRUE)[1]))

# Replace NA values with the mode
lvf_values[is.na(lvf_values)] <- mode_lvf

# Update the dataframe with the modified "lvf" column
modified_df_new$lvf <- lvf_values

# Lets do analysis for lvf
cat("Unique values in lvf column:", unique(modified_df_new$lvf), "\n")
cat("Minimum value in lvf column:", min(modified_df_new$lvf, na.rm = TRUE), "\n")
cat("Maximum value in lvf column:", max(modified_df_new$lvf, na.rm = TRUE), "\n")
cat("Number of NA values in lvf column:", sum(is.na(modified_df_new$lvf)), "\n")

# Lets do analysis for num
cat("Unique values in num column:", unique(modified_df_new$num), "\n")
cat("Minimum value in num column:", min(modified_df_new$num, na.rm = TRUE), "\n")
cat("Maximum value in num column:", max(modified_df_new$num, na.rm = TRUE), "\n")
cat("Number of NA values in num column:", sum(is.na(modified_df_new$num)), "\n")

# Assuming modified_df_new is your dataframe
num_na <- sum(is.na(modified_df_new))

# Display the number of NAs
cat("Number of NA values in the entire dataframe:", num_na, "\n")
###############################################################


# Assuming modified_df_new is your dataframe
numeric_df <- apply(modified_df_new, 2, function(x) as.numeric(as.character(x)))
modified_df_new <- numeric_df

m_df <- data.frame(numeric_df)
str(m_df)
# Assuming m_df is your dataframe
feature_names <- names(m_df)
print(feature_names)
# Create a table of features and their data types
feature_table <- data.frame(Feature = feature_names, Data_Type = sapply(m_df, class))

# Print the feature table
print(feature_table)

###################################
l_df <- m_df
str(l_df)
# Assuming 'num' is a character column in latest_df
l_df$num <- as.numeric(as.character(l_df$num))

# Check if 'num' is now numeric
is_numeric <- is.numeric(l_df$num)

# Print the result
print(is_numeric)

# Assuming 'num' is a numeric or integer column in latest_df
l_df$num <- ifelse(l_df$num > 1, 1, l_df$num)

# Check the unique values in 'num' after conversion
unique(l_df$num)

View(l_df)

# Logistic Regression as an example
model <- glm(num ~ ., data = l_df, family = "binomial")
summary(model)

# Model Evaluation
predicted_probs <- predict(model, newdata = l_df, type = "response")
predicted_classes <- ifelse(predicted_probs > 0.5, 1, 0)

# Assess accuracy
confusion_matrix <- table(l_df$num, predicted_classes)
print(confusion_matrix)

accuracy <- sum(diag(confusion_matrix)) / sum(confusion_matrix)
print(accuracy)

# Calculate accuracy, sensitivity, and specificity
accuracy <- sum(diag(confusion_matrix)) / sum(confusion_matrix)
sensitivity <- confusion_matrix[2, 2] / sum(confusion_matrix[2, ])
specificity <- confusion_matrix[1, 1] / sum(confusion_matrix[1, ])

# Print evaluation metrics
cat("Accuracy:", accuracy, "\n")
print(sensitivity)
print(specificity)
##############################
aic <- AIC(model)
bic <- BIC(model)

cat("AIC:", aic, "\n")
cat("BIC:", bic, "\n")

# ROC-AUC
library(pROC)
roc_curve <- roc(l_df$num, predict(model, type = "response"))
roc_auc <- auc(roc_curve)

cat("ROC-AUC:", roc_auc, "\n")
###############################

#########################

# Assuming 'data' is your dataset with 'CAD' as the binary outcome variable
# and 'feature1', 'feature2', ... as predictor variables

# Split the data into training and testing sets
set.seed(123)  # Set seed for reproducibility
train_indices <- sample(1:nrow(l_df), 0.8 * nrow(l_df))
train_data <- l_df[train_indices, ]
test_data <- l_df[-train_indices, ]

# Logistic Regression Model Training
model <- glm(num ~ ., data = train_data, family = "binomial")

# Model Evaluation on Training Set
train_predicted_probs <- predict(model, newdata = train_data, type = "response")
train_predicted_classes <- ifelse(train_predicted_probs > 0.5, 1, 0)

# Training Error
train_confusion_matrix <- table(train_data$num, train_predicted_classes)
train_accuracy <- sum(diag(train_confusion_matrix)) / sum(train_confusion_matrix)
cat("Training Accuracy:", train_accuracy, "\n")

# Model Evaluation on Testing Set
test_predicted_probs <- predict(model, newdata = test_data, type = "response")
test_predicted_classes <- ifelse(test_predicted_probs > 0.5, 1, 0)

# Testing Error
test_confusion_matrix <- table(test_data$num, test_predicted_classes)
test_accuracy <- sum(diag(test_confusion_matrix)) / sum(test_confusion_matrix)
cat("Testing Accuracy:", test_accuracy, "\n")

####################
##################################
# Calculate the correlation matrix
cor_matrix <- cor(m_df, use = "complete.obs")

# Load the corrplot library
library(corrplot)

# Create a correlation plot
corrplot(cor_matrix, method = "circle")

#######################################333

# Set the correlation threshold
# Set the correlation threshold
threshold <- 0.6

# Find highly correlated pairs
highly_correlated_pairs <- which(upper.tri(cor_matrix, diag = FALSE) & abs(cor_matrix) > threshold, arr.ind = TRUE)

# Get the names of highly correlated columns
highly_correlated_features <- unique(c(rownames(cor_matrix)[highly_correlated_pairs[, 1]], rownames(cor_matrix)[highly_correlated_pairs[, 2]]))

# Print out the highly correlated columns
cat("Columns with correlation above", threshold, ":\n")
print(highly_correlated_pairs)
print(highly_correlated_features)
########################################################################3
########## removing  highly corellated features from each pair
column_names_todrop_cor <- c("dummy","cyr","rldv5","proto","met")

m_df <- m_df[, !colnames(m_df) %in% column_names_todrop_cor]
print(m_df)
View(m_df)
########################################################################3
# Extract features (excluding the target variable)
#features <- select(numeric_columns, -num)

# Standardize the features (important for PCA)
#scaled_features <- scale(features)

# Perform PCA
#pca_result <- prcomp(scaled_features)

# View summary of PCA
#summary(pca_result)

# Plot the cumulative proportion of variance explained
#plot(cumsum(pca_result$sdev^2 / sum(pca_result$sdev^2)), xlab = "Number of Principal Components", ylab = "Cumulative Proportion of Variance Explained")

###########################################3

library(randomForest)

# Assuming your data is in 'data' and the response variable is 'response'
model <- randomForest(num ~ ., data = m_df)

# Get feature importance
feature_importance <- importance(model)
feature_importance
sorted_feature_importance <- feature_importance[order(-feature_importance[, 1]), ]
sorted_feature_importance
##################

#Since xhypo", "lvx2", "dig", "lvx1 are least significant, we are dropping them based on mannual anzlysis
column_names_todrop_rf <- c("xhypo", "lvx2", "dig", "lvx1")

m_df <- m_df[, !colnames(m_df) %in% column_names_todrop_rf]

View(m_df)

#################
##########-----####

# Assuming your data is in 'modified_df_new' and the response variable is 'num'
library(glmnet)

# Extracting predictors and response variable
response_variable <- "num"
predictors <- m_df[, names(m_df) != response_variable, drop = FALSE]
response <- m_df[, response_variable]

# Scale the predictors
scaled_predictors <- scale(predictors)

# Convert predictors to matrix
predictors_matrix <- as.matrix(scaled_predictors)

# Fit a Lasso (L1 regularization) model using cross-validation
lasso_model <- cv.glmnet(predictors_matrix, response, alpha = 1)

# Print the cross-validated results
print(lasso_model)

# Plot the cross-validated mean squared error as a function of log(lambda)
plot(lasso_model)

# Identify the optimal lambda (minimizing mean cross-validated error)
best_lambda <- lasso_model$lambda.min
cat("Best Lambda:", best_lambda, "\n")

# Get feature coefficients for the optimal lambda
lasso_coefficients <- coef(lasso_model, s = best_lambda)

print(lasso_coefficients)

# Assuming 'lasso_coefficients' is the coefficients obtained from the LASSO model
# and 'predictors' is the data frame of predictors

# Convert coefficients to data frame
lasso_coefficients_df <- data.frame(variable = rownames(lasso_coefficients)[-1], coefficient = as.numeric(lasso_coefficients)[-1])

# Sort coefficients by absolute value
sorted_lasso_coefficients <- lasso_coefficients_df[order(abs(lasso_coefficients_df$coefficient), decreasing = TRUE), ]

# Print sorted coefficients
print(sorted_lasso_coefficients)

########################
# Install and load necessary packages
if (!requireNamespace("ggplot2", quietly = TRUE)) {
  install.packages("ggplot2")
}
library(ggplot2)

# Create a bar plot for sorted LASSO coefficients
ggplot(sorted_lasso_coefficients, aes(x = reorder(variable, -coefficient), y = coefficient)) +
  geom_bar(stat = "identity", fill = "blue", color = "black") +
  coord_flip() +
  labs(title = "Sorted LASSO Coefficients", x = "Variable", y = "Coefficient") +
  theme_minimal()

###########################
#-------------#
# Assuming your data is in 'modified_df_new' and the response variable is 'num'
library(glmnet)

# Extracting predictors and response variable
response_variable <- "num"
predictors <- m_df[, names(m_df) != response_variable, drop = FALSE]
response <- m_df[, response_variable]

# Scale the predictors
scaled_predictors <- scale(predictors)

# Convert predictors to matrix
predictors_matrix <- as.matrix(scaled_predictors)

# Fit a Ridge (L2 regularization) model using cross-validation
ridge_model <- cv.glmnet(predictors_matrix, response, alpha = 0)

# Print the cross-validated results
print(ridge_model)

# Plot the cross-validated mean squared error as a function of log(lambda)
plot(ridge_model)

# Identify the optimal lambda (minimizing mean cross-validated error)
best_lambda <- ridge_model$lambda.min
cat("Best Lambda:", best_lambda, "\n")

# Get feature coefficients for the optimal lambda
ridge_coefficients <- coef(ridge_model, s = best_lambda)

# Print the coefficients (including potentially nonzero coefficients)
print(ridge_coefficients)


# Extract the selected features
selected_features <- rownames(ridge_coefficients)
cat("Selected Features:", selected_features, "\n")

# Assuming 'ridge_model' is the result of the Ridge regression model

# Get feature coefficients for the optimal lambda
ridge_coefficients <- coef(ridge_model, s = best_lambda)

# Extract the feature names and corresponding coefficients
feature_info <- data.frame(
  Feature = rownames(ridge_coefficients),
  Coefficient = as.numeric(ridge_coefficients)
)

# Sort features by absolute coefficient value
sorted_features <- feature_info[order(abs(feature_info$Coefficient), decreasing = TRUE), ]

# Print or inspect the sorted features
print(sorted_features)


#####------#####
# Assuming your dataframe is modified_df_new
model <- lm(num ~ ., data = m_df)
summary_stats <- summary(model)

# Extract t-statistics and p-values
t_statistics <- coef(summary_stats)[, "t value"]
p_values <- coef(summary_stats)[, "Pr(>|t|)"]
p_values <- round(p_values, 2)
print(p_values)

# Set significance level
significance_level <- 0.05

# Select features based on significance level
selected_features <- names(which(p_values < significance_level))

# Print selected features
cat("Selected Features:\n")
print(selected_features)

# Plotting p-values
barplot(p_values, names.arg = names(p_values), col = ifelse(p_values < significance_level, "blue", "gray"), main = "P-values for Each Feature", ylab = "P-value", col.main = "darkblue")
abline(h = significance_level, col = "red", lty = 2)


options(scipen = 999)

##########################
k_data_test <- m_df

# Assuming your dataframe is named 'modified_df_new' and you want to drop the 'num' column
k_data_test <- k_data_test[, -which(names(k_data_test) == "num")]

# Scale the data
scaled_data <- scale(k_data_test)

View(scaled_data)

k <- 5
kmeans_result <- kmeans(scaled_data, centers = k, nstart = 20)  # nstart for multiple initializations

# Assign cluster labels to the original dataset
k_data_test$cluster <- as.factor(kmeans_result$cluster)

# Print cluster centers
cat("Cluster Centers:\n")
print(kmeans_result$centers)

# Visualize the clustering results
plot(scaled_data, col = k_data_test$cluster)

# Assuming your dataframe is named 'scaled_data', and you have k-means results in 'kmeans_result'
library(factoextra)

library(ggplot2)

# Visualize k-means clustering results
cluster_plot <- fviz_cluster(kmeans_result, data = scaled_data, geom = "point", stand = FALSE, frame.type = "norm")

# Add title
cluster_plot + ggtitle("K-Means Clustering Results before performing PCA")

# Example: Use PCA for dimensionality reduction
pca_data <- prcomp(scaled_data)
reduced_data <- pca_data$x[, 1:2]  # Choose the number of components
kmeans_result <- kmeans(reduced_data, centers = k)


# Visualize k-means clustering results
cluster_plot <- fviz_cluster(kmeans_result, data = scaled_data, geom = "point", stand = FALSE, frame.type = "norm")

# Add title
cluster_plot + ggtitle("K-Means Clustering Results after performing PCA")

##########
# Get the column names of m_df
column_names <- names(m_df)

# Define a vector of colors
plot_colors <- c("blue", "green", "red", "purple", "orange", "cyan", "magenta", "brown", "gray", "darkgreen")

# Loop through each column and create scatter plots with different colors
for (i in seq_along(column_names)) {
  plot(m_df[[column_names[i]]], main = paste("Scatter Plot for", column_names[i]), 
       xlab = "Index", ylab = column_names[i], pch = 19, col = plot_colors[i])
}
##########

# Assuming 'data' is your data frame with the target variable named 'target'
# Adjust column names accordingly

# Example:
X <- subset(m_df, select = -num)
y <- m_df$num

# Perform one-way ANOVA for each feature
f_statistics <- sapply(X, function(column) {
  result <- oneway.test(column ~ y)
  return(result$statistic)
})

# Set your significance level (e.g., 0.05)
significance_level <- 0.3

# Identify significant features based on p-values
significant_features <- names(f_statistics[f_statistics > qf(1 - significance_level, 1, length(y) - 2)])

# Print significant features
cat("Significant Features:\n")
cat(significant_features,sep=",")

#####################################

# Assuming 'data' is your data frame with the target variable named 'target'
# Adjust column names accordingly

# Example:
X <- subset(m_df, select = -num)
y <- m_df$num

# Set a threshold for variance (adjust as needed)
variance_threshold <- 0.1

# Calculate variances for each feature
feature_variances <- apply(X, 2, var)

# Identify features with variance above the threshold
selected_features <- names(feature_variances[feature_variances > variance_threshold])

# Print selected features
cat("Selected Features:\n")
cat(selected_features, sep=", ")

###################################

#Since "lvx3" and "rldv5e" are least significant based on lasso and ridge, we are dropping them based on mannual anzlysis
column_names_todrop_rf <- c("rldv5e", "lvx3")

m_df <- m_df[, !colnames(m_df) %in% column_names_todrop_rf]

View(m_df)

##################################
library(dplyr)
library(ggplot2)
library(plotly)

# Ensure 'num' is treated as a factor if it's categorical
m_df$num <- as.factor(m_df$num)

# Plot graphic
Plot1 <- ggplot(m_df, aes(x = num, y = age, fill = num)) +
  geom_boxplot() +
  scale_fill_manual(values = rainbow(length(unique(m_df$num)))) +  # Add rainbow colors
  theme_minimal() +
  theme(legend.position = "none")

# Convert ggplot to interactive plotly plot
ggplotly(Plot1)

##############################################3

latest_df <- m_df
str(latest_df)
# Assuming 'num' is a character column in latest_df
latest_df$num <- as.numeric(as.character(latest_df$num))

# Check if 'num' is now numeric
is_numeric <- is.numeric(latest_df$num)

# Print the result
print(is_numeric)

# Assuming 'num' is a numeric or integer column in latest_df
latest_df$num <- ifelse(latest_df$num > 1, 1, latest_df$num)

# Check the unique values in 'num' after conversion
unique(latest_df$num)

View(latest_df)

# Logistic Regression as an example
model <- glm(num ~ ., data = latest_df, family = "binomial")
summary(model)

# Model Evaluation
predicted_probs <- predict(model, newdata = latest_df, type = "response")
predicted_classes <- ifelse(predicted_probs > 0.5, 1, 0)

# Assess accuracy
confusion_matrix <- table(latest_df$num, predicted_classes)
print(confusion_matrix)

accuracy <- sum(diag(confusion_matrix)) / sum(confusion_matrix)
print(accuracy)
####################
aic <- AIC(model)
bic <- BIC(model)

cat("AIC:", aic, "\n")
cat("BIC:", bic, "\n")

# ROC-AUC
library(pROC)
roc_curve <- roc(latest_df$num, predict(model, type = "response"))
roc_auc <- auc(roc_curve)

cat("ROC-AUC:", roc_auc, "\n")
########################

# Assuming 'latest_df' is your DataFrame and 'model' is your predictive model
library(pROC)

# Plot ROC curve
plot(roc_curve, main = "ROC Curve", col = "blue", lwd = 2)

# Add labels and legend
abline(h = 0, v = 1, col = "gray", lty = 2)
legend("bottomright", legend = paste("AUC = ", round(auc(roc_curve), 2)), col = "blue", lwd = 2)

#########################

# Assuming 'data' is your dataset with 'CAD' as the binary outcome variable
# and 'feature1', 'feature2', ... as predictor variables

# Split the data into training and testing sets
set.seed(123)  # Set seed for reproducibility
train_indices <- sample(1:nrow(latest_df), 0.8 * nrow(latest_df))
train_data <- latest_df[train_indices, ]
test_data <- latest_df[-train_indices, ]

# Logistic Regression Model Training
model <- glm(num ~ ., data = train_data, family = "binomial")

# Model Evaluation on Training Set
train_predicted_probs <- predict(model, newdata = train_data, type = "response")
train_predicted_classes <- ifelse(train_predicted_probs > 0.5, 1, 0)

# Training Error
train_confusion_matrix <- table(train_data$num, train_predicted_classes)
train_accuracy <- sum(diag(train_confusion_matrix)) / sum(train_confusion_matrix)
cat("Training Accuracy:", train_accuracy, "\n")

# Model Evaluation on Testing Set
test_predicted_probs <- predict(model, newdata = test_data, type = "response")
test_predicted_classes <- ifelse(test_predicted_probs > 0.5, 1, 0)

# Testing Error
test_confusion_matrix <- table(test_data$num, test_predicted_classes)
test_accuracy <- sum(diag(test_confusion_matrix)) / sum(test_confusion_matrix)
cat("Testing Accuracy:", test_accuracy, "\n")

# Model Evaluation
predicted_probs <- predict(model, newdata = latest_df, type = "response")
predicted_classes <- ifelse(predicted_probs > 0.5, 1, 0)

# Assess accuracy
confusion_matrix <- table(latest_df$num, predicted_classes)
print(confusion_matrix)

####################
# Descriptive Statistics
gender_distribution <- table(latest_df$sex, latest_df$num)
print(gender_distribution)

##############
# Assuming 'sex' and 'num' are factors in latest_df
latest_df$sex <- as.factor(latest_df$sex)
latest_df$num <- as.factor(latest_df$num)

# Create a table for gender distribution
gender_distribution <- table(latest_df$sex, latest_df$num)

# Convert the table to a matrix for plotting
gender_matrix <- as.matrix(gender_distribution)

# Create a grouped bar plot
barplot(gender_matrix, beside = TRUE, col = c("lightblue", "lightgreen"), 
        xlab = "Gender", ylab = "Count",
        main = "Gender Distribution by 'num'")

# Add legend at the bottom right with a small box
legend("bottomright", legend = colnames(gender_matrix), fill = c("lightblue", "lightgreen"),
       trace = TRUE, cex = 0.5)

##############
# Chi-square test
chi_square_test <- chisq.test(gender_distribution)
print(chi_square_test)
######################

# Assuming 'chol' is a factor in latest_df
latest_df$chol <- as.factor(latest_df$chol)

# Create a table for cholesterol distribution
chol_distribution <- table(latest_df$chol, latest_df$num)

##############
# Chi-square test
chi_square_test_chol <- chisq.test(chol_distribution)
print(chi_square_test_chol)

######################################
# Iterate through columns in the dataframe
for (col in names(latest_df)) {
  # Check if the column is a factor (categorical variable)
  if (is.factor(latest_df[[col]])) {
    # Create a table for distribution
    distribution <- table(latest_df[[col]], latest_df$num)
    
    # Print column name
    cat("\nChi-square test for", col, "\n")
    
    # Perform chi-square test
    chi_square_test <- chisq.test(distribution)
    
    # Print the chi-square test results
    print(chi_square_test)
  }
}
##############################
str(latest_df)
#####################################
# Install and load necessary packages
if (!requireNamespace("ggplot2", quietly = TRUE)) {
  install.packages("ggplot2")
}
library(ggplot2)

# Create a data frame with column names and corresponding p-values
p_values_df <- data.frame(Column = character(0), P_Value = numeric(0), stringsAsFactors = FALSE)

# Iterate through columns in the dataframe
for (col in names(latest_df)) {
  # Check if the column is a factor (categorical variable)
  if (is.factor(latest_df[[col]])) {
    # Create a table for distribution
    distribution <- table(latest_df[[col]], latest_df$num)
    
    # Perform chi-square test
    chi_square_test <- chisq.test(distribution)
    
    # Add results to the data frame
    p_values_df <- rbind(p_values_df, data.frame(Column = col, P_Value = chi_square_test$p.value))
  }
}

# Create a bar plot for p-values
ggplot(p_values_df, aes(x = reorder(Column, P_Value), y = P_Value)) +
  geom_bar(stat = "identity", fill = "blue", color = "black") +
  coord_flip() +
  labs(title = "Chi-square Test P-Values", x = "Column", y = "P-Value") +
  theme_minimal()

###########################
ldf_ff <- latest_df
# Convert all feature types to factors
ldf_ff[] <- lapply(ldf_ff, as.factor)

str(ldf_ff)

# Install and load necessary packages
if (!requireNamespace("ggplot2", quietly = TRUE)) {
  install.packages("ggplot2")
}
library(ggplot2)

# Create a data frame with column names and corresponding p-values
p_values_df <- data.frame(Column = character(0), P_Value = numeric(0), stringsAsFactors = FALSE)

# Iterate through columns in the dataframe
for (col in names(ldf_ff)) {
  # Check if the column is a factor (categorical variable)
  if (is.factor(ldf_ff[[col]])) {
    # Create a table for distribution
    distribution <- table(ldf_ff[[col]], ldf_ff$num)
    
    # Perform chi-square test
    chi_square_test <- chisq.test(distribution)
    
    # Add results to the data frame
    p_values_df <- rbind(p_values_df, data.frame(Column = col, P_Value = chi_square_test$p.value))
  }
}

# Create a bar plot for p-values
ggplot(p_values_df, aes(x = reorder(Column, P_Value), y = P_Value)) +
  geom_bar(stat = "identity", fill = "blue", color = "black") +
  coord_flip() +
  labs(title = "Chi-square Test P-Values", x = "Column", y = "P-Value") +
  theme_minimal()

########################################

# Assuming 'data' is your dataset with 'CAD' and 'sex' columns

# Filter rows with heart disease (CAD = 1)
heart_disease_data <- latest_df[latest_df$num == 1, ]

# Calculate the percentage of men and women with heart disease
percentage_men <- sum(heart_disease_data$sex == 1) / nrow(heart_disease_data) * 100
percentage_women <- sum(heart_disease_data$sex == 0) / nrow(heart_disease_data) * 100

# Create a data frame for the pie chart
pie_data <- data.frame(
  Gender = c("Men", "Women"),
  Percentage = c(percentage_men, percentage_women)
)

# Plot a pie chart
pie(pie_data$Percentage, labels = pie_data$Gender, col = c("blue", "pink"), main = "Distribution of Heart Disease by Gender")
#########################################
# Install and load the scales package if not already installed
if (!requireNamespace("scales", quietly = TRUE)) {
  install.packages("scales")
}
library(scales)

# Set a custom color palette with warm colors
custom_colors <- c("#FF9999", "#FFD700")

# Increase the size of the plot
par(mfrow = c(1, 1), mar = c(4, 4, 4, 4))  # Adjust mar for margins

# Create a pie chart with percentages, increased size, and warm colors
pie(pie_data$Percentage, labels = percent(pie_data$Percentage/100), col = custom_colors, main = "Distribution of Heart Disease by Gender", cex.main = 1.2, cex = 0.8)

# Add a legend
legend("topright", legend = pie_data$Gender, fill = custom_colors, title = "Gender", cex = 0.8)


##############################################

# Assuming 'data' is your dataset with features and 'CAD' is the binary outcome variable
str(latest_df)
# Assuming 'latest_df' is your dataframe
latest_df$chol <- as.numeric(as.character(latest_df$chol))
latest_df$num <- as.numeric(as.character(latest_df$num))

# Set the threshold for high cholesterol
threshold_chol <- 200

# Create a new binary variable indicating high cholesterol
latest_df$HighCholesterol <- ifelse(latest_df$chol > threshold_chol, 1, 0)

# Group Comparison
with_high_cholesterol <- latest_df[latest_df$HighCholesterol == 1, ]
without_high_cholesterol <- latest_df[latest_df$HighCholesterol == 0, ]

# Compare incidence of heart attacks
t_test_result <- t.test(with_high_cholesterol$num, without_high_cholesterol$num)
print(t_test_result)

###################################
# Assuming 'latest_df' is your dataframe
# Create age groups (you can customize the breaks and labels based on your data)
age_breaks <- c(0, 30, 40, 50, 60, 70, Inf)
age_labels <- c("<30", "30-39", "40-49", "50-59", "60-69", "70+")

# Cut the Age variable into age groups
latest_df$AgeGroup <- cut(latest_df$age, breaks = age_breaks, labels = age_labels, right = FALSE)

# Create a table of heart disease counts by age group
heart_disease_by_age <- table(latest_df$AgeGroup, latest_df$num)

# Define colors for different age groups
age_group_colors <- c("lightblue", "pink", "lightgreen", "lightyellow", "lightcoral", "lightcyan")

# Plot a bar chart with adjusted legend position and size
barplot(heart_disease_by_age, beside = TRUE, col = age_group_colors,
        legend.text = FALSE, main = "Distribution of Heart Disease by Age Group",
        xlab = "Age Group", ylab = "Count")

# Add legend with adjusted position and smaller box
legend("bottomright", legend = levels(latest_df$AgeGroup), fill = age_group_colors,
       title = "Age Group", cex = 0.4, inset = c(0, 0))

######################################
# Assuming 'latest_df' is your dataframe
# Filter rows with heart disease (num = 1)
heart_disease_data <- latest_df[latest_df$num == 1, ]

# Create age groups (you can customize the breaks and labels based on your data)
age_breaks <- c(0, 30, 40, 50, 60, 70, Inf)
age_labels <- c("<30", "30-39", "40-49", "50-59", "60-69", "70+")

# Cut the Age variable into age groups
heart_disease_data$AgeGroup <- cut(heart_disease_data$age, breaks = age_breaks, labels = age_labels, right = FALSE)

# Create a table of heart disease counts by age group
heart_disease_by_age <- table(heart_disease_data$AgeGroup)

# Convert counts to percentages
heart_disease_percentage <- prop.table(heart_disease_by_age) * 100

# Define colors for different age groups
age_group_colors <- c("lightblue", "pink", "lightgreen", "lightyellow", "lightcoral", "lightcyan")

# Plot a bar chart with adjusted legend position and size
barplot(heart_disease_percentage, col = age_group_colors,
        legend.text = FALSE, main = "Distribution of Heart Disease by Age Group",
        xlab = "Age Group", ylab = "Percentage", cex.names = 0.8, ylim = c(0, 100))  # Set y-axis limits

# Add text labels with percentage values
text(seq_along(heart_disease_percentage), heart_disease_percentage, labels = paste(round(heart_disease_percentage, 2), "%"),
     pos = 3, cex = 0.7, col = "black")

# Add legend with adjusted position and smaller box
legend("topright", legend = levels(heart_disease_data$AgeGroup), fill = age_group_colors,
       title = "Age Group", cex = 0.7, inset = c(0, 0))


################################


# Calculate accuracy, sensitivity, and specificity
accuracy <- sum(diag(confusion_matrix)) / sum(confusion_matrix)
sensitivity <- confusion_matrix[2, 2] / sum(confusion_matrix[2, ])
specificity <- confusion_matrix[1, 1] / sum(confusion_matrix[1, ])

# Print evaluation metrics
cat("Accuracy:", accuracy, "\n")
print(sensitivity)
print(specificity)

#####################################

