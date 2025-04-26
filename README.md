# Master’s Thesis

This thesis has been completed for the Master's in Human-Computer Interaction at the University of Trento, in collaboration with the Transportation Institute of the German Aerospace Center (DLR) in Braunschweig, as part of the European Hi-Drive project.

## Analyzing Spatial Eye-Tracking Data of Teleoperators to Assess Workload in Automotive Fleet Management

## Abstract
With the rise of partially automated vehicles, teleoperation has emerged as a critical mechanism for remote fleet management. This thesis develops and validates spatial Area-of-Interest (AoI) metrics from eye-tracking data to assess teleoperator cognitive workload. By manipulating task difficulty and presentation frequency in a controlled user study (and incorporating an additional dataset), six AoI metrics (fixation duration, fixation frequency, dwell time, visit frequency, time-to-first fixation, and stationary gaze entropy) were computed over five interface panels. Inferential analyses (two-way ANOVAs) evaluated the effects of difficulty and frequency (RQ1 & RQ2), while predictive models (SVM, Decision Trees, Random Forest, GBM, XGB, MLP with various sampling techniques) classified binary and multi-level workload states (RQ3). Results confirm workload-driven changes in ocular behavior, demonstrate high predictive performance (> 85 % recall for binary states), and underscore the value of AoI metrics for adaptive HMI design.

⸻

## Repository Structure

```
ANALYSIS_OPEN_SOURCE/
├─ aggregated_data/        # Metric-wise aggregated CSVs (raw) *
├─ aoi_data/               # Extracted features CSVs
├─ cleaned_data/           # Cleaned intermediate datasets *
├─ exports/                # Raw data *
├─ iMotions/               # iMotions logs (performance & psychophysiological) *
├─ info_players/           # Eye-tracking visualization data *
├─ libraries/              # Utility modules and helper scripts
├─ questionnaire_data/     # NASA-TLX and other survey responses *
├─ recordings/             # Session video exports with overlays *
└─ *.ipynb                 # Numbered analysis notebooks:
   ├─ **1-***              # Raw data preparation
   ├─ **2-***              # Raw data assessment & export
   ├─ **3-***              # Data cleaning & assessment
   ├─ **4-***              # Feature extraction (AoI metrics)
   ├─ **5-***              # Validation analyses (manipulation, performance, AoI division)
   ├─ **6-***              # Inferential analysis of RQ1 (difficulty & frequency effects)
   ├─ **7-***              # Inferential analysis of RQ2
   ├─ **8-***              # Predictive modeling: binary workload classifiers
   ├─ **9-***              # Predictive modeling: modulators (difficulty/frequency)
   ├─ data_description.txt  # Overview of raw variables and data formats
   ├─ files_description.txt # Descriptions of raw folders and file conventions
   └─ README.md             # This file

(*) Note: Raw data files are not included in this repository for practical and privacy reasons; only extracted feature datasets are provided.

## Dependencies & Environment
	•	Python 3.10+
	•	pandas, numpy, scipy
	•	scikit-learn, xgboost
	•	statsmodels, pingouin
	•	matplotlib
	•	R 4.1+ (for ART analyses)
	•	ARTool, lme4
	•	Jupyter Notebook/Lab
	•	iMotions (for original raw-data visualization; processed logs included)
	•	SoSci (for original questionnaire data collection)
```

⸻

## Publication & Presentation

This work is slated for submission to Mensch und Computer 2025 (Chemnitz, 31 Aug – 3 Sep 2025). Analyses will be expanded in the conference proceedings.