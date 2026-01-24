# EDA Lab Exercises

This repository contains a series of Exploratory Data Analysis (EDA) laboratory exercises. Each experiment focuses on different aspects of data analysis, visualization, and statistical exploration using R.

## Repository Structure

```
EDA_LAB_EXERCISE/
├── Experiment_1/
├── Experiment_2/
├── Experiment_3/
├── Experiment_4/
├── Experiment_5/
├── Experiment_6/
└── Experiment_7/
```

Each experiment folder follows a consistent structure:
- **Code/** - R scripts containing the analysis code
- **Data/** - Dataset files used in the experiment
- **Document/** - Reports, documentation, and analysis writeups
- **Figures/** - Generated plots, charts, and visualizations
- **README.md** - Specific instructions and details for that experiment

## Experiments Overview

### Experiment 1: Student Performance Analysis
**Dataset:** `student_performance.csv`  
**Focus:** Exploratory data analysis on student academic performance  
**Script:** `exp1.R`

### Experiment 2: E-commerce Transactions Analysis
**Dataset:** `ecommerce_transactions.csv`  
**Focus:** Analysis of e-commerce transaction patterns and trends  
**Script:** `exp2.R`

### Experiment 3: Healthcare Data Analysis
**Dataset:** `healthcare_data.csv`  
**Focus:** Scatter plot matrices and correlation analysis of health indicators across age groups  
**Script:** `EXP3.R`

### Experiment 4: Traffic Accident Data Analysis
**Dataset:** `traffic_accidents.csv`  
**Focus:** Multi-dimensional visualization of traffic accidents using effective visual encoding  
**Script:** `EXP4.R`

### Experiment 5-7: [To be added]


## Prerequisites

- **R** (version 4.0 or higher recommended)
- **RStudio** (optional but recommended)

### Required R Packages

```r
install.packages(c(
  "tidyverse",   # Data manipulation and visualization
  "ggplot2",     # Advanced plotting
  "dplyr",       # Data manipulation
  "readr",       # Reading CSV files
  "summarytools",# Summary statistics
  "corrplot",    # Correlation plots
  "skimr",       # Data summarization
  "DataExplorer",# Automated EDA
  "GGally",      # Pairwise plots
  "scales"       # Formatting numbers and scales
))
```

## How to Use

1. **Navigate to the experiment folder** you want to work on
2. **Read the experiment-specific README** for detailed instructions
3. **Open the R script** in the `Code/` folder
4. **Run the analysis** - the script will:
   - Load the dataset from the `Data/` folder
   - Perform exploratory analysis
   - Generate visualizations saved to the `Figures/` folder
5. **Review outputs** in the `Document/` and `Figures/` folders

## Running an Experiment

```r
# Set working directory to the experiment folder
setwd("c:/EDA_LAB_EXERCISE/Experiment_1")

# Run the script
source("Code/exp1.R")
```

Or run directly from RStudio by opening the `.R` file and clicking "Source" or "Run".

## General EDA Workflow

Each experiment typically follows this workflow:

1. **Data Import** - Load the dataset
2. **Data Inspection** - View structure, dimensions, data types
3. **Data Cleaning** - Handle missing values, outliers, duplicates
4. **Summary Statistics** - Calculate descriptive statistics
5. **Data Visualization** - Create plots to understand distributions and relationships
6. **Insights & Findings** - Document observations and patterns
7. **Export Results** - Save plots and generate reports


## Project Guidelines

- Keep datasets in the `Data/` folder
- Save all generated plots in the `Figures/` folder
- Document your analysis in the `Document/` folder
- Keep scripts clean and reproducible
- Use relative paths when possible

## Author 
NAME:NAVEENKUMAR R
Roll no:23BAD074

---

**Last Updated:** January 2026  
**Course:** Exploratory Data Analysis Laboratory
