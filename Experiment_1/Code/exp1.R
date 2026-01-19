#LAB EXPERIMENT - 1
print("ROLL NO: 23BAD074")
library(ggplot2)
library(dplyr)
library(tidyr)

student_data <- read.csv("C:\\EDA_LAB_EXERCISE\\1.student_performance.csv")

str(student_data)
summary(student_data)

student_data <- student_data %>%
  mutate(Average_Internal = (Internal_Test1 + Internal_Test2) / 2)

subject_summary <- student_data %>%
  group_by(Subject) %>%
  summarise(Mean_Internal = mean(Average_Internal))

ggplot(subject_summary, aes(x = Subject, y = Mean_Internal, fill = Subject)) +
  geom_bar(stat = "identity") +
  theme_minimal() +
  labs(title = "Average Internal Marks by Subject",
       x = "Subject",
       y = "Mean Marks") +
  theme(legend.position = "none")

trend_summary <- student_data %>%
  group_by(Subject) %>%
  summarise(Test_One = mean(Internal_Test1),
            Test_Two = mean(Internal_Test2)) %>%
  pivot_longer(cols = c(Test_One, Test_Two),
               names_to = "Test_Type",
               values_to = "Marks")

ggplot(trend_summary, aes(x = Test_Type, y = Marks, group = Subject, color = Subject)) +
  geom_line(linewidth = 1) +
  geom_point(size = 3) +
  theme_minimal() +
  labs(title = "Internal Test Performance Trend",
       x = "Test",
       y = "Average Marks")

grade_summary <- student_data %>%
  count(Final_Grade) %>%
  mutate(percentage = n / sum(n) * 100) %>%
  mutate(label_position = cumsum(percentage) - 0.5 * percentage)

ggplot(grade_summary, aes(x = "", y = percentage, fill = Final_Grade)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y") +
  theme_void() +
  labs(title = "Final Grade Distribution") +
  geom_text(aes(y = label_position,
                label = paste0(round(percentage, 1), "%")),
            color = "white",
            size = 5)
