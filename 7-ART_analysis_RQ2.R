# Load the necessary libraries
library(ARTool)
library(dplyr)
library(emmeans)

# Load and prepare df
df <- read.csv("C:/Users/vale_ad/Desktop/HiDrive_Study2/Analysis/aoi_data/RQ2_ART_data.csv")

df$difficulty <- factor(df$difficulty, levels = c('Easy', 'Hard'), ordered = TRUE)
df$frequency <- factor(df$frequency, levels = c('Slow', 'Fast'), ordered = TRUE)
str(df)



# ART analysis (mixed effects) [time_1st_fix]
ttff_art_model <- art(time_1st_fix_Diagnostics_norm ~ difficulty * frequency + (1|participant_id), data=df)
ttff_art_model
anova(ttff_art_model)



# ART analysis (mixed effects)   [no temporal demand] [visit_count]
visit_count_art_model <- art(visit_count_Actions_norm ~ difficulty * frequency + (1|participant_id), data=df)
visit_count_art_model
anova(visit_count_art_model)

# Post-hoc comparisons
art.con(visit_count_art_model, "difficulty")  # difficulty
art.con(visit_count_art_model, "frequency")   # frequency
art.con(visit_count_art_model, "difficulty:frequency")   # interaction



# ART analysis (mixed effects) [visit_len]
visit_len_art_model <- art(visit_len_Description_norm ~ difficulty * frequency + (1|participant_id), data=df)
visit_len_art_model
anova(visit_len_art_model)

