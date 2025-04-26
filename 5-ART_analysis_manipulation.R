# Load the necessary libraries
library(ARTool)
library(dplyr)
library(emmeans)

# Load and prepare df
df <- read.csv("C:/Users/vale_ad/Desktop/HiDrive_Study2/Analysis/aoi_data/quest.csv")

block_type_mapping_dif <- c('1' = 'Easy', '2' = 'Easy', '3' = 'Hard', '4' = 'Hard', 
                            '5' = 'Easy', '6' = 'Easy', '7' = 'Hard', '8' = 'Hard')
block_type_mapping_freq <- c('1' = 'Slow', '2' = 'Fast', '3' = 'Slow', '4' = 'Fast', 
                             '5' = 'Slow', '6' = 'Fast', '7' = 'Slow', '8' = 'Fast')
df$difficulty <- block_type_mapping_dif[as.character(df$block_type)]
df$frequency <- block_type_mapping_freq[as.character(df$block_type)]
df$difficulty <- factor(df$difficulty, levels = c('Easy', 'Hard'))
df$frequency <- factor(df$frequency, levels = c('Slow', 'Fast'))
df <- df %>% select(participant_id, NASA_TLX_Score, NASA_TLX_Score2, NASA_TLX_Score3, difficulty, frequency)
str(df)



# ART analysis (mixed effects)
art_model <- art(NASA_TLX_Score ~ difficulty * frequency + (1|participant_id), data=df)
art_model
anova(art_model)

# Post-hoc comparisons for main effects
art.con(art_model, "difficulty")  # difficulty
art.con(art_model, "frequency")   # frequency
art.con(art_model, "difficulty:frequency")   # interaction



# ART analysis (mixed effects)   [no temporal demand]
art_model2 <- art(NASA_TLX_Score2 ~ difficulty * frequency + (1|participant_id), data=df)
art_model2
anova(art_model2)

# Post-hoc comparisons for main effects
art.con(art_model2, "difficulty")  # difficulty
art.con(art_model2, "frequency")   # frequency
art.con(art_model2, "difficulty:frequency")   # interaction



# ART analysis (mixed effects)   [cognitive demand]
art_model3 <- art(NASA_TLX_Score3 ~ difficulty * frequency + (1|participant_id), data=df)
art_model3
anova(art_model3)

# Post-hoc comparisons for main effects
art.con(art_model3, "difficulty")  # difficulty
art.con(art_model3, "frequency")   # frequency
art.con(art_model3, "difficulty:frequency")   # interaction
