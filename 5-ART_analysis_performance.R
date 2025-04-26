# Load the necessary libraries
library(ARTool)
library(dplyr)
library(emmeans)

# Load and prepare df
df <- read.csv("C:/Users/vale_ad/Desktop/HiDrive_Study2/Analysis/aoi_data/gui_perf_R.csv")

df$difficulty <- factor(df$difficulty, levels = c('Easy', 'Hard'))
df$frequency <- factor(df$frequency, levels = c('Slow', 'Fast'))
df <- df %>% select(participant_id, difficulty, frequency, errors_norm)
str(df)



# ART analysis (mixed effects)
art_model <- art(errors_norm ~ difficulty * frequency + (1|participant_id), data=df)
art_model
anova(art_model)

# Post-hoc comparisons for main effects
art.con(art_model, "difficulty")  # difficulty
art.con(art_model, "frequency")   # frequency
art.con(art_model, "difficulty:frequency")   # interaction
