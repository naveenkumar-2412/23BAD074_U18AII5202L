#LAB EXPERIMENT -2
print("ROLL NO: 23BAD074")
library(ggplot2)
library(dplyr)
library(lubridate)

ecom_data <- read.csv("C:/EDA_LAB_EXERCISE/2.ecommerce_transactions.csv")

ecom_data$Trans_Date <- as.Date(ecom_data$Transaction_Date)

ggplot(ecom_data, aes(x = Transaction_Amount)) +
  geom_histogram(bins = 20, fill = "blue", color = "black") +
  labs(title = "Distribution of Transaction Amounts",
       x = "Transaction Amount",
       y = "Frequency") +
  theme_minimal()

ggplot(ecom_data, aes(y = Transaction_Amount)) +
  geom_boxplot(fill = "slateblue", color = "darkblue") +
  labs(title = "Boxplot of Transaction Amounts",
       y = "Transaction Amount") +
  theme_minimal()

heatmap_summary <- ecom_data %>%
  mutate(Month = month(Trans_Date, label = TRUE, abbr = FALSE)) %>%
  group_by(Product_Category, Month) %>%
  summarise(Total_Sales = sum(Transaction_Amount), .groups = 'drop')

ggplot(heatmap_summary, aes(x = Month, y = Product_Category, fill = Total_Sales)) +
  geom_tile(color = "white") +
  scale_fill_gradient(low = "lightyellow", high = "orange") +
  labs(title = "Monthly Sales Intensity Heatmap",
       x = "Month",
       y = "Product Category",
       fill = "Total Sales") +
  theme_minimal()


