getwd();
setwd("C:\\Users\\Bukunmi\\OneDrive\\Documents\\R Studio Practice")

# Topic:
# Syntax in R
  # 1. Variables
  # 2. Comments
  # 3. Keywords

# Variables
# stores values in R
# <- assignment operator

#gene name "TP53"

# gene <- "TP53"
# gene
# 
# print(gene)

# 2.3, 4.6, 3.6, 7.2, 4.7
# to store these values in one variable

# expression_levels <- c(2.3, 4.6, 3.6, 7.2, 4.7)

# To import data as variable
# raw_data <- read.csv(file.choose())
# raw_data

# Rules
# variables name must start with letter but you can add number at the end or middle.
# gene1 <- 25

# no spaces allowed in variable name, instead use underscore (_) or dot (.).
# sample_id <- "s01"
# sample.id <- "s02"

# R is case sensitive
# Glucose_level <- 110
# glucose_level <- 110

# R overwrite variables without any warning
# glucose_level <- c(110, 90, 120)

# data <- raw_data # create a copy of my raw_data
# raw_data$patient_id <- NULL # this code will remove patient_id column
# raw_data

# for data cleaning and transforming create a variable for that data

# clean_data <- data[,-1]
# clean_data

# comments
# help to understand your code
# comments are for our own understanding. R doesn't consider it as code

#Keywords
# These are reserved words in for specific function
#if, else, TRUE, FALSE, for so on....

# help("reserved")
# help(mean)
# ?median

# sort values largest to smallest
# sorted_age <- sort(raw_data$age, decreasing = TRUE)
# sorted_age
# raw_data$age

#sort values smallest to largest
# sorted_age2 <- sort(raw_data$age, decreasing = FALSE)
# sorted_age2

# if else, helps to create logical conditions

# gene_expression <- 30

# if(gene_expression > 25){
#   print("Gene is highly expressed")
# }

# incase the condition is false, we can use the if else statement

# if(gene_expression > 50){
#   print("Gene is highly expressed")
# }else {
#   print("Gene expression is low")
# }

# you cannot use keywords as variable names
#if <- 28


# for loop: used to repeat same tasks multiple times
# str(raw_data)
#because gender column is categorical data type, it should be in a factor format. So, we are going to convert it from chr to factor
# same for diagnosis and smoker column

# instead of manually conversion, we would use loop function to convert the three columns
# clean_data <- raw_data
# str(clean_data)

# to convert columns automatically into factor, create for loop function

# for (i in 1:ncol(clean_data)) {
#   if(is.character(clean_data[[i]])){
#     clean_data[[i]] <- as.factor(clean_data[[i]])
#   }
# }
# str(clean_data)

#practice using cholesterol levels

cholesterol <- 230
if(cholesterol > 240){
  print("High Cholesterol")
}

Systolic_bp <- 130
if(Systolic_bp < 120){
  print("Blood Pressure is normal")
}else{
  print("Blood Pressure is high")
}

# Load the datasets
patient_data <- read.csv(file.choose())
patient_data

metadata <- read.csv(file.choose())
metadata

# To create copy of the datasets inorder to work with
patient_data_copy <- patient_data

metadata_copy <- metadata

str(patient_data_copy)
str(metadata_copy)

patient_data_factor_cols <- c("gender", "diagnosis", "smoker")
metadata_factor_cols <- c("height", "gender")

colnames(patient_data_copy)

#to convert to factor

for (colname in patient_data_factor_cols) {
  patient_data_copy[[colname]] <- as.factor(patient_data_copy[[colname]])
}

str(patient_data_copy)

colnames(metadata_copy) 

#to convert to factor

for (colname in metadata_factor_cols) {
  metadata_copy[[colname]] <- as.factor(metadata_copy[[colname]])
}

colnames(metadata_copy)

for (colname in metadata_factor_cols) {
  metadata_copy[[colname]] <- as.factor(metadata_copy[[colname]])
}

str(metadata_copy)

binary_cols <- c("smoker")

for (col in binary_cols) {
  patient_data_copy[[col]] <- ifelse(patient_data_copy[[col]] == "Yes", 1, 0)
}

str(patient_data_copy)

#I DID IT!!!!!
