# EDA Lab Experiment 1: Student Performance Analysis

## Overview
This project performs Exploratory Data Analysis (EDA) on student performance data, analyzing internal test scores across different subjects and final grade distributions.

## Project Structure
```
Experiment_1/
├── Code/
│   └── exp1.R              # Main R script for analysis
├── Data/
│   └── 1.student_performance.csv  # Student performance dataset
├── Document/               # Documentation folder
├── Figures/                # Generated visualizations
└── README.md              # This file
```

## Dataset
The analysis uses `student_performance.csv` which contains:
- Student information
- Internal Test 1 scores
- Internal Test 2 scores
- Subject information
- Final grades

## Analysis Components

### 1. Data Processing
- Calculates average internal marks from Test 1 and Test 2
- Groups data by subject for comparative analysis

### 2. Visualizations Generated

#### a. Average Internal Marks by Subject
- Bar chart showing mean internal test performance across subjects
- Helps identify which subjects have higher/lower average scores

#### b. Internal Test Performance Trend
- Line chart comparing Test 1 vs Test 2 performance by subject
- Shows performance improvement or decline across tests

#### c. Final Grade Distribution
- Pie chart displaying the percentage distribution of final grades
- Provides overview of overall student performance

## Requirements
```r
library(ggplot2)
library(dplyr)
library(tidyr)
```

## Usage

1. Ensure all required R packages are installed:
   ```r
   install.packages(c("ggplot2", "dplyr", "tidyr"))
   ```

2. Run the analysis script:
   ```r
   source("Code/exp1.R")
   ```

3. Visualizations will be generated and displayed

## Author
NAME:NAVEENKUMAR R
Roll No: 23BAD074

## Date
19 January 2026
