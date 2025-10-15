#' NISRA colour palettes
#'
#' @param reverse reverse colour ordering, default is `FALSE`
#'
#' @return A function that takes a number (`n`) and returns a colour palette
#' with `n` colours
#'
#' @export
nisra_palette <- function(reverse = FALSE) {
  colours <- nisracolours::nisra_colours[["hex"]]
  n_colours <- length(colours)
  n_warn <- which.min(nisracolours::nisra_colours[["type"]] == "main")


  function(n) {
    if (n == 0) {
      cli::cli_abort("Must request at least one colour")
    }

    if (n > n_colours) {
      cli::cli_abort("{.arg n} must be less than {n_colours}")
    }

    if (n > n_warn) {
      cli::cli_warn("Using more than {n_warn} colours may be difficult to read")
    }

    out <- colours[seq_len(n)]
    if (reverse) {
      out <- rev(out)
    }
    out
  }
}
