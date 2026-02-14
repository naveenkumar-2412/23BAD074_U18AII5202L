print("Name: NAVEENKUMAR R | Roll no: 23BAD074")
library(ggplot2)
library(dplyr)
library(readr)
df <- read_csv("C:\\EDA_LAB_EXERCISE\\Experiment_7\\Data\\7.social_media_interactions.csv")
df <- df %>%
  mutate(
    Platform = as.factor(Platform),
    Post_Type = as.factor(Post_Type)
  )
p_alpha <- ggplot(df, aes(x = Likes, y = Comments, color = Platform)) +
  geom_point(alpha = 0.25, size = 2) +   # alpha blending here
  labs(title = "Alpha Blending: Likes vs Comments",
       x = "Likes", y = "Comments") +
  theme_minimal()
print(p_alpha)
p_jitter <- ggplot(df, aes(x = Platform, y = Engagement_Score, color = Platform)) +
  geom_jitter(width = 0.18, height = 0, alpha = 0.45, size = 2) +  # jitter here
  labs(title = "Jittering: Engagement Score by Platform",
       x = "Platform", y = "Engagement Score") +
  theme_minimal()
print(p_jitter)
df_binned <- df %>%
  mutate(Likes_Bin = cut(Likes, breaks = seq(0, 5000, by = 500), include.lowest = TRUE)) %>%
  group_by(Platform, Likes_Bin) %>%
  summarise(
    mean_engagement = mean(Engagement_Score),
    n = n(),
    .groups = "drop"
  )
p_bin <- ggplot(df_binned, aes(x = Likes_Bin, y = mean_engagement, fill = Platform)) +
  geom_col(position = "dodge") +
  labs(title = "Aggregation + Binning: Mean Engagement by Likes Bin",
       x = "Likes (Binned)", y = "Mean Engagement Score") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))
print(p_bin)
p_2dbin <- ggplot(df, aes(x = Likes, y = Comments)) +
  geom_bin2d(bins = 25) +   # 2D binning here
  labs(title = "2D Binning: Density of Likes vs Comments",
       x = "Likes", y = "Comments") +
  theme_minimal()
print(p_2dbin)
