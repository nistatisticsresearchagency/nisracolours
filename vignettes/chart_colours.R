## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  message = FALSE,
  warning = FALSE
)

## ----setup--------------------------------------------------------------------
library(nisracolours)
library(ggplot2)

theme_set(theme_minimal(base_size = 12))

## ----colours, fig.show="hold", out.width="45%", fig.height=3------------------
df <- data.frame(
  group = c("Employed", "Unemployed", "Inactive"),
  rate = c(0.716, 0.423, 0.272)
)

ggplot(df, aes(group, rate, fill = group)) +
  geom_col() +
  scale_fill_manual(values = old_colours) +
  guides(fill = guide_none(), x = guide_none(), y = guide_none()) +
  labs(x = NULL, y = NULL)


ggplot(df, aes(group, rate, fill = group)) +
  geom_col() +
  scale_fill_discrete_nisra() +
  guides(fill = guide_none(), x = guide_none(), y = guide_none()) +
  labs(x = NULL, y = NULL)

