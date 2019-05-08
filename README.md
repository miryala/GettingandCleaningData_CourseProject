# Getting And Cleaning Data
This is course project for Getting and Cleaning Data. The analysis is done on data collected by wearables(Samsung Galaxy SII) done on 30 subjects.

The run_analysis script does the following

- Checks if data already exists. If data does not exist downloads and extracts it.
- Load libraries required for cleaning and doing analysis on data
- Read traning and test data from file. Append activity and subjects columns to the data
- Merges both test and training data
- Assigns variable names to columns that are read from file features.txt
- Changes activity values(1 - 6) to descriptive names by factoring
- Removes test and training data from memory as they are huge files. We work only on merged data now.
- Extract only columns which involve mean and standard deviation from merged data and assign it back to merged data
- Clean variable names and make them meaningful by removing special characters and expanding required abbreviations
- Summarises the cleaned data by grouping on activity and subject and taking mean of each variable. Writes the data to new file tidy_data.txt