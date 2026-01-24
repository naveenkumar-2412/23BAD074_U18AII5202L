#---------------------------------------------
# Name : NAVEENKUMAR R | Roll No: 23BAD074
#---------------------------------------------

# 1. Load the dataset
# Replace the path with your dataset location
data <- read.csv("C:\\EDA_LAB_EXERCISE\\Experiment_3\\Data\\3.healthcare_data.csv")
# 2. Create Age Groups for color encoding
data$Age_Group <- cut(
  data$Age,
  breaks = 3,
  labels = c("Young", "Middle", "Senior")
)

# Define colors for Age Groups
# Young = Red, Middle = Green, Senior = Blue
colors <- c("red", "green", "blue")[data$Age_Group]

# 3. Scatter Plot Matrix using numeric health indicators
pairs(
  data[, c("Age", "BMI", "Blood_Pressure", "Glucose_Level", "Cholesterol")],
  col  = colors,
  pch  = 19,
  main = "Scatter Plot Matrix of Health Indicators by Age Group"
)

# Add legend
legend(
  "topright",
  legend = levels(data$Age_Group),
  fill   = c("red", "green", "blue"),
  title  = "Age Group"
)

# 4. Correlation Matrix of Health Indicators
cor_matrix <- cor(
  data[, c("Age", "BMI", "Blood_Pressure", "Glucose_Level", "Cholesterol")]
)
print(cor_matrix)
