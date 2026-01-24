# Experiment 4: Traffic Accident Data Analysis

## Overview
This lab experiment focuses on effective visual encoding of traffic accident data. The analysis uses multi-dimensional visualization techniques including size, color, and shape encoding to represent accident severity, frequency, and type in a comprehensive scatter plot.

## Project Structure
```
Experiment_4/
├── Code/
│   └── EXP4.R              # Main R script for data analysis
├── Data/
│   └── 4.traffic_accidents.csv  # Traffic accidents dataset
├── Document/               # Documentation folder
├── Figures/                # Output visualizations
└── README.md              
```

## Dataset Description
The dataset contains traffic accident records with the following attributes:
- **Vehicles_Involved**: Number of vehicles involved in the accident
- **Casualties**: Number of casualties resulting from the accident
- **Severity**: Accident severity level (Minor, Major, Fatal)
- **Accident_Type**: Type of accident (various categories)

## Analysis Components
The R script performs the following visual encoding:

1. **Data Aggregation**
   - Aggregates accident frequency by vehicles, casualties, severity, and type
   - Computes total frequency for each combination of attributes

2. **Multi-dimensional Visualization**
   - **X-axis**: Vehicles Involved
   - **Y-axis**: Casualties
   - **Size (cex)**: Represents accident frequency (larger points = more frequent)
   - **Color**: Represents severity with gradient (Gold → Orange → Red for Minor → Major → Fatal)
   - **Shape (pch)**: Represents accident type (different symbols for different types)

3. **Interactive Legends**
   - Severity legend showing color gradient
   - Accident type legend showing different shapes
   - Helps in interpreting the complex multi-dimensional plot

## Requirements
- R (version 3.6 or higher recommended)
- Required R packages:
  - Base R (no additional packages required for this analysis)

## Usage
1. Ensure the data file path in the R script matches your directory structure
2. Open R or RStudio
3. Set the working directory to the Code folder
4. Run the script:
```r
source("EXP4.R")
```

## Output
The script generates:
- Multi-dimensional scatter plot showing:
  - Relationship between vehicles involved and casualties
  - Color-coded severity levels (Minor=Gold, Major=Orange, Fatal=Red)
  - Size-encoded frequency of accidents
  - Shape-encoded accident types
- Legends for severity and accident type

Visualizations can be saved to the `Figures/` directory for documentation purposes.

## Author
NAME: NAVEENKUMAR R  
Roll No: 23BAD074

## Date
January 2026

## Notes
- The script uses absolute path for data loading. Update the path in line 6 if needed.
- Color gradient uses a warm color palette to represent increasing severity.
- Point sizes are scaled by a factor of 1.8 for better visibility.
- Shape encoding uses standard R plotting characters (pch 16+).
