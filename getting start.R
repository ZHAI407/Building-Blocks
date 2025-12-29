# Getting started and best practices
library(tidyverse)
2 + 3
## [1] 5

(18/3 + 1*2) ^ (4 - 2) - 6.18273
## [1] 57.81727

x = (18/3 + 1*2) ^ (4 - 2) - 6.18273
y = c(1, 3, 6, 9)

x + y

x = runif(20)
x
mean(x)
var(x)
# Data frames
example_df = tibble(
  vec_numeric = 5:8,
  vec_char = c("My", "name", "is", "Jeff"),
  vec_logical = c(TRUE, TRUE, TRUE, FALSE),
  vec_factor = factor(c("male", "male", "female", "female"))
)

example_df
## set seed to ensure reproducibility
set.seed(1234)

## define data frame containing x and y
plot_df = tibble(
  x = rnorm(1000, sd = .5),
  y = 1 + 2 * x + rnorm(1000)
)
## histogram of x
ggplot(plot_df, aes(x = x)) + geom_histogram()

## scatterplot of x and y
ggplot(plot_df, aes(x = x, y = y)) + geom_point()
