
#--------------------------------------------------
# Name : NAVEENKUMAR R | Roll No : 23BAD074
# Objective : Effective Visual Encoding of Traffic Accident Data
#--------------------------------------------------
# 1. Load the dataset
# Replace the path below with your dataset file location
data_path <- "C:\\EDA_LAB_EXERCISE\\Experiment_4\\Data\\4.traffic_accidents.csv"
data <- read.csv(data_path)
agg_data <- aggregate(
  list(Frequency = rep(1, nrow(data))),
  by = list(
    Vehicles   = data$Vehicles_Involved,
    Casualties = data$Casualties,
    Severity   = data$Severity,
    Type       = data$Accident_Type
  ),
  FUN = sum
)

agg_data$Severity <- factor(
  agg_data$Severity,
  levels = c("Minor", "Major", "Fatal")
)
# Color Gradient: Minor (Gold) → Major (Orange) → Fatal (Red)
severity_colors <- colorRampPalette(c("gold", "orange", "red"))(3)
colors <- severity_colors[agg_data$Severity]
# Shape Encoding for Accident Type
shapes <- as.numeric(as.factor(agg_data$Type)) + 15
# (16 = circle, 17 = triangle, 18 = diamond, etc.)
#4. Scatter Plot
plot(
  agg_data$Vehicles,
  agg_data$Casualties,
  cex  = agg_data$Frequency * 1.8,   # Size → Frequency
  col  = colors,                     # Color → Severity
  pch  = shapes,                     # Shape → Accident Type
  main = "Traffic Accident Severity, Frequency & Type",
  xlab = "Vehicles Involved",
  ylab = "Casualties"
)
# 5. Legends
# Severity Legend
legend(
  "topright",
  legend = levels(agg_data$Severity),
  fill   = severity_colors,
  title  = "Severity"
)
# Accident Type Legend
legend(
  "bottomright",
  legend = levels(as.factor(agg_data$Type)),
  pch    = unique(shapes),
  title  = "Accident Type"
)
