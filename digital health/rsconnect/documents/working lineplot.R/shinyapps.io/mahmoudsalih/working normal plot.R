View(trial1)
variable.names(trial1$cups.of.coffee)
variable.names(trial1$cups.of.tea.per.week)
variable.names(trial1$cans.of.energy.drinks.per.week)
variable.names(trial1$cans.of.soda.per.week)
variable.names(trial1$average.hours.if.sleep.week)

ggplot(trial1, aes(x = cups.of.coffee,
                   y = average.hours.if.sleep.week)) +
  geom_line()
ggplot(trial1, aes(x = cups.of.tea.per.week,
                   y = average.hours.if.sleep.week)) +
  geom_line()
  ggplot(trial1, aes(x = cans.of.energy.drinks.per.week,
                    y = average.hours.if.sleep.week)) +
    geom_line()
  ggplot(trial1, aes(x = cans.of.soda.per.week,
                    y = average.hours.if.sleep.week)) +
    geom_line()


