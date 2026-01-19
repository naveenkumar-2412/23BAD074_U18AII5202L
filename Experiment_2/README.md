# Experiment 2: E-commerce Transaction Analysis

## Overview
This lab experiment focuses on exploratory data analysis (EDA) of e-commerce transaction data. The analysis includes visualizing transaction patterns, distribution analysis, and identifying trends across product categories and time periods.

## Project Structure
```
Experiment_2/
├── Code/
│   └── exp2.R              # Main R script for data analysis
├── Data/
│   └── 2.ecommerce_transactions.csv  # E-commerce transaction dataset
├── Document/               # Documentation folder
├── Figures/                # Output visualizations
└── README.md              
```

## Dataset Description
The dataset contains e-commerce transaction records with the following attributes:
- **Transaction_ID**: Unique identifier for each transaction
- **Customer_ID**: Unique identifier for each customer
- **Transaction_Date**: Date of the transaction
- **Product_Category**: Category of purchased product (Books, Electronics, Home, Clothing)
- **Transaction_Amount**: Transaction value in currency units
- **Payment_Mode**: Method of payment (Card, UPI, NetBanking)
- **Region**: Geographic region (North, South, East, West)

## Analysis Components
The R script performs the following visualizations:

1. **Distribution Analysis**
   - Histogram showing the distribution of transaction amounts
   - Identifies the frequency and spread of transaction values

2. **Outlier Detection**
   - Boxplot of transaction amounts
   - Helps identify outliers and the range of typical transactions

3. **Temporal and Categorical Analysis**
   - Monthly sales intensity heatmap by product category
   - Visualizes sales patterns across different months and product categories
   - Uses color gradients to represent total sales volume

## Requirements
- R (version 3.6 or higher recommended)
- Required R packages:
  - `ggplot2` - For data visualization
  - `dplyr` - For data manipulation
  - `lubridate` - For date handling

## Installation
Install the required packages in R:
```r
install.packages("ggplot2")
install.packages("dplyr")
install.packages("lubridate")
```

## Usage
1. Ensure the data file path in the R script matches your directory structure
2. Open R or RStudio
3. Set the working directory to the Code folder
4. Run the script:
```r
source("exp2.R")
```

## Output
The script generates three visualizations:
- Distribution histogram of transaction amounts
- Boxplot for outlier detection
- Heatmap showing monthly sales intensity by product category

Visualizations can be saved to the `Figures/` directory for documentation purposes.

## Author
NAME:NAVEENKUMAR R
Roll No: 23BAD074

## Date
19 January 2026

## Notes
- The script currently uses an absolute path for data loading. Update the path in line 7 if needed.
- Generated plots appear in the R graphics device and can be exported as needed.
