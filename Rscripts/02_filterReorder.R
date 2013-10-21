library(ggplot2)
library(plyr)

iDat <- read.delim("income_clean1.tsv")

## make a plot of agelevel with counts of income greater thann 50K
a <- ggplot(iDat, aes(x = age, weight = cens, fill = sex)) +
  ylab("count of income greater than 50K") +
  geom_histogram(position = position_dodge(width = 0.9))
ggsave("barchart_ageCount.png")

## since old don't have income greater than 50K and have very small observations
## remove the related observations of old
iDat <- droplevels(subset(iDat, age != "Old"))

## reorder agelevel based on maximum of hours per week
iDat <- within(iDat, age <- reorder(age, hours.per.week, max))

## make a plot of hours per week on age colored by income
b <- ggplot(iDat, aes(x = age, y = hours.per.week, color = income)) + 
  geom_jitter(alpha = 0.6, position = position_jitter(width = 0.1)) +
  scale_color_manual(values = c("#0066CC", "#FF9900"))
ggsave("stripplot_ageHour2.png")

## make a plot of hours per week on age for each income level
c <- ggplot(iDat, aes(x = age, y = hours.per.week, color = age)) +
  scale_fill_brewer(palette = "Accent") +
  facet_wrap(~ income) +
  geom_jitter(position = position_jitter(width = 0.2))
ggsave("stripplot_ageHourByIncome.png")

## make a plot of hours per week on occupation within age
d <- ggplot(iDat, aes(x = occupation, y = hours.per.week, color = income)) + 
  geom_jitter(alpha = 0.6, position = position_jitter(width = 0.1)) +
  scale_color_manual(values=c("#FF9933", "#CC33FF")) +
  facet_wrap(~ age, nrow = 4)
ggsave("stripplot_occuHourByAge.png")

## make a plot of hours per week on occupation for each income level
e <- ggplot(iDat, aes(x = occupation, y = hours.per.week, color = occupation)) +
  scale_fill_brewer(palette="Set3") +
  facet_wrap(~ income) +
  geom_jitter(position = position_jitter(width = 0.1))
ggsave("stripplot_occuHourByIncome.png")

## reorder data
iDat <- arrange(iDat, sex, age, hours.per.week, income)

## write data to file
write.table(iDat, "income_clean2.tsv", quote = FALSE,
            sep = "\t", row.names = FALSE)