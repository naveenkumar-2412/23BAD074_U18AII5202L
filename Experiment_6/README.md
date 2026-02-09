# Experiment 6: Advanced Multi-Dimensional Visualization

## Overview
This experiment explores advanced visualization techniques for multi-dimensional data analysis using R. It focuses on creating parallel coordinates plots, bubble charts, and trellis displays to understand relationships in retail business data.

## Objective
- Implement parallel coordinates plots for multi-dimensional data
- Create bubble charts to visualize multiple variables simultaneously
- Develop trellis displays for comparative analysis across categories
- Analyze retail business performance metrics

## Dataset
- **File**: `6.retail_business.csv`
- **Description**: Retail business transaction data
- **Features**:
  - Order_ID
  - Region
  - Product_Category
  - Sales
  - Profit
  - Discount
  - Customer_Segment

## Visualizations Created

### 1. Parallel Coordinates Plot
- Visualizes Sales, Profit, and Discount across Customer Segments
- Helps identify patterns and relationships between multiple variables
- Uses color coding for different customer segments

### 2. Bubble Chart
- X-axis: Sales
- Y-axis: Profit
- Bubble size: Discount amount
- Color: Region
- Enables understanding of multi-dimensional relationships

### 3. Trellis Display
- Faceted scatter plots showing Sales vs Profit by Region
- Color-coded by Customer Segment
- Includes trend lines for each region
- Facilitates comparative analysis across geographical areas

## R Libraries Used
```r
library(ggplot2)   # Data visualization
library(GGally)    # Parallel coordinates plot
library(dplyr)     # Data manipulation
```

## Files
- **Code/**: R script for generating visualizations (`exp-6.R`)
- **Data/**: Retail business dataset
- **Document/**: Experiment documentation and report
- **Figures/**: Generated visualization plots

## How to Run
1. Install required R packages: `ggplot2`, `GGally`, `dplyr`
2. Update the data file path in the R script
3. Run the script in RStudio or R console
4. View and save the generated visualizations

## Key Insights
- Multi-dimensional visualization techniques reveal complex relationships
- Parallel coordinates help identify patterns across multiple variables
- Bubble charts effectively display 4-5 dimensions simultaneously
- Trellis displays enable regional comparison of business metrics

## Author
NAVEENKUMAR R | Roll No: 23BAD074
