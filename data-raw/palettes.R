nisra_colours <- data.frame(
  name = c("NISRA blue", "NICS navy", "Bright green", "Purple", "Lilac", "Dark olive", "Rosy brown", "Dark slate", "Hot pink", "Deep burgunday"),
  hex = c(
  "#3878c5", "#00205b", "#68a41e", "#732777", "#ce70d2",
  "#434700", "#a88f8f", "#3b3b3b",	"#e64791",	"#400b23"
  ),
  order = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
  text_overlay = c("white", "white", "black", "white", "black", "white", "black", "white", "black", "white"),
  use_for_text = c(TRUE, TRUE, FALSE, TRUE, FALSE, TRUE, FALSE, TRUE, FALSE, TRUE),
  type = rep(c("main", "supplementary"), each = 5)
)

usethis::use_data(nisra_colours, overwrite = TRUE)

old_colours <- c("#407ec9", "#00205b", "#cedc20")

usethis::use_data(old_colours, overwrite = TRUE)
