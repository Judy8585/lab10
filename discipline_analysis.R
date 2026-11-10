# Winter Olympics 2026 - Discipline Analysis

# Load the dataset
url <- "https://raw.githubusercontent.com/rfordatascience/tidytuesday/main/data/2026/2026-02-10/schedule.csv"

olympics <- read.csv(url)

# Preview the data
head(olympics)

# Count scheduled events by sport discipline
discipline_counts <- sort(
  table(olympics$discipline_name),
  decreasing = TRUE
)

# Display the results
print(discipline_counts)

# Create a bar chart
png("discipline_events.png", width = 1200, height = 900)

par(mar = c(5, 14, 4, 2))

barplot(
  rev(discipline_counts),
  horiz = TRUE,
  las = 1,
  col = "steelblue",
  main = "2026 Winter Olympics: Events by Discipline",
  xlab = "Number of Scheduled Sessions"
)

dev.off()