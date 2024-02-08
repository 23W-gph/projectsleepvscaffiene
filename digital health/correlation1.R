
data <- read.csv("trial1.csv")

cups_of_coffee <- trial1$cups.of.coffee
average_hours_of_sleep <- trial1$average.hours.if.sleep.week

correlation <- cor(cups_of_coffee, average_hours_of_sleep)

print(paste("Correlation between cups of coffee and average hours of sleep per week:", correlation))


cups_of_tea <- trial1$cups.of.tea.per.week
average_hours_of_sleep <- trial1$average.hours.if.sleep.week

correlation <- cor(cups_of_tea, average_hours_of_sleep)

print(paste("Correlation between cups of tea and average hours of sleep per week:", correlation))


cans_of_energy <- trial1$cans.of.energy.drinks.per.week
average_hours_of_sleep <- trial1$average.hours.if.sleep.week

correlation <- cor(cans_of_energy, average_hours_of_sleep)

print(paste("Correlation between cans of energy and average hours of sleep per week:", correlation))


cans_of_soda <- trial1$cans.of.soda.per.week
average_hours_of_sleep <- trial1$average.hours.if.sleep.week

correlation <- cor(cans_of_soda, average_hours_of_sleep)

print(paste("Correlation between cans of soda and average hours of sleep per week:", correlation))

