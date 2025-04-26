# HiDrive Study 2

This project processes, aggregates, and analyzes eye-tracking data collected during the HiDrive Study 2. The data involves multiple participants and includes various metrics organized in multiple CSV files such as blinks, fixations, gaze positions, and pupil positions from Pupil Core, task performance markers from iMotions and questionnaire responses.

This repository at the moment is mantained by Andrea Valerio as it is also part of his Master's Thesis.

## Project Structure

### Main Directories

- **aggregated_data/**: Contains aggregated CSV files for different eye-tracking metrics.
- **cleaned_data/**: Processed and cleaned data ready for analysis.
- **exports/**: post-processing Pupil Core data exports.
- **iMotions/**: iMotions export data and related files.
- **recordings/**: Original recordings used in the study from Pupil

### Notebooks Explanation

- **1-data_preparation.ipynb**: Prepares and aggregates the raw data from Pupil Core and iMotions.
- **1-file_synchronization.ipynb**: Checks feasibility and prepares synchronization of different files.
- **2-[parameter]_export_assess.ipynb**: Assesses quality and goodness of the data within parameters.
- **2-inter-parameter_assessment.ipynb**: Assesses possible correlation and relationship among parameters.
- **3-data_cleaning.ipynb**: Cleanes filees from unusable data.

### Other Files
Other files within the repository are just to support the documentation and report of certain results.

## Main Dependencies

- **Python 3.11**
- **Pandas**
- **NumPy**
- **Dask**