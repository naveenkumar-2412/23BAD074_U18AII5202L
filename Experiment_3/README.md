# Experiment 3: Healthcare Data Analysis

## Overview
This lab experiment focuses on exploratory data analysis (EDA) of healthcare data using scatter plot matrices and correlation analysis. The analysis visualizes relationships between health indicators across different age groups to identify patterns and correlations.

## Project Structure
```
Experiment_3/
├── Code/
│   └── EXP3.R              # Main R script for data analysis
├── Data/
│   └── 3.healthcare_data.csv  # Healthcare dataset
├── Document/               # Documentation folder
├── Figures/                # Output visualizations
└── README.md              
```

## Dataset Description
The dataset contains healthcare records with the following attributes:
- **Age**: Age of the individual
- **BMI**: Body Mass Index
- **Blood_Pressure**: Blood pressure readings
- **Glucose_Level**: Glucose level measurements
- **Cholesterol**: Cholesterol levels

## Analysis Components
The R script performs the following analyses:

1. **Age Group Categorization**
   - Creates three age groups: Young, Middle, and Senior
   - Uses color encoding (Red, Green, Blue) for visual differentiation

2. **Scatter Plot Matrix**
   - Displays pairwise relationships between all health indicators
   - Color-coded by age group for comparative analysis
   - Includes Age, BMI, Blood Pressure, Glucose Level, and Cholesterol

3. **Correlation Matrix**
   - Computes correlation coefficients between all health indicators
   - Helps identify strong relationships between variables
   - Printed output shows numerical correlations

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
source("EXP3.R")
```

## Output
The script generates:
- Scatter plot matrix showing relationships between health indicators
- Color-coded visualization by age group (Young=Red, Middle=Green, Senior=Blue)
- Correlation matrix printed in the console

Visualizations can be saved to the `Figures/` directory for documentation purposes.

## Author
NAME: NAVEENKUMAR R  
Roll No: 23BAD074

## Date
January 2026

## Notes
- The script uses absolute path for data loading. Update the path in line 7 if needed.
- Age groups are automatically calculated based on equal-width binning.
- Color encoding helps identify age-related patterns in health indicators.
