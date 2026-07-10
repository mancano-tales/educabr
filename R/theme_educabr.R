#' educabr2 Visualization Theme
#'
#' A standardized visualization system for the `educabr2` package, heavily inspired by
#' Kieran Healy's "Data Visualization: A Practical Introduction" (2018/2026).
#' This theme is designed to produce beautiful, standardized, and colorblind-safe
#' (Okabe-Ito palette) graphics. It is structurally compatible with the ongoing
#' MA Thesis by Tales Mançano (2026), ensuring that plots generated via this
#' package meet rigorous academic presentation standards.
#'
#' @param base_size Base font size.
#' @param base_family Base font family. Defaults to "serif" if Latin Modern is unavailable.
#'
#' @return A ggplot2 theme object.
#'
#' @references
#' Healy, K. (2018). *Data Visualization: A Practical Introduction*. Princeton University Press.
#' \url{https://socviz.co/}
#'
#' Mançano, T. (2026). *The Politics of Reforming Tertiary Education* (MA Thesis in progress).
#'
#' Okabe, M., & Ito, K. (2008). *Color Universal Design (CUD): How to make figures and presentations that are friendly to Colorblind people*. \url{https://jfly.uni-koeln.de/color/}
#'
#' @export
#'
#' @examples
#' \dontrun{
#' library(ggplot2)
#' library(educabr2)
#'
#' df <- get_enrollment(level = "superior", dimension = "race")
#'
#' ggplot(df, aes(x = year, y = value, fill = dim_race)) +
#'   geom_area() +
#'   theme_educabr() +
#'   scale_fill_educabr()
#' }
theme_educabr <- function(base_size = 9.5, base_family = "serif") {
  # Attempt to use Latin Modern if showtext is loaded and font is added,
  # otherwise fall back to serif.
  if (requireNamespace("showtext", quietly = TRUE) &&
      "LM Roman" %in% sysfonts::font_families()) {
    base_family <- "LM Roman"
  }

  ggplot2::theme_minimal(base_size = base_size, base_family = base_family) %+replace%
    ggplot2::theme(
      plot.title         = ggplot2::element_text(face = "bold",
                                                 size = base_size + 1.5,
                                                 margin = ggplot2::margin(b = 4)),
      plot.subtitle      = ggplot2::element_text(size = base_size - 0.5,
                                                 colour = "#555555",
                                                 margin = ggplot2::margin(b = 6)),
      plot.caption       = ggplot2::element_text(size = base_size - 2,
                                                 colour = "#666666",
                                                 hjust = 0,
                                                 margin = ggplot2::margin(t = 10)),
      axis.title         = ggplot2::element_text(size = base_size),
      axis.text          = ggplot2::element_text(size = base_size - 1),
      axis.ticks         = ggplot2::element_line(colour = "#CCCCCC"),
      panel.grid.major   = ggplot2::element_line(colour = "#EEEEEE", linewidth = 0.3),
      panel.grid.minor   = ggplot2::element_blank(),
      panel.background   = ggplot2::element_rect(fill = "white", colour = NA),
      strip.text         = ggplot2::element_text(face = "bold", size = base_size),
      strip.background   = ggplot2::element_rect(fill = "#F0F0F0", colour = NA),
      legend.position    = "bottom",
      legend.text        = ggplot2::element_text(size = base_size - 1),
      legend.key.size    = ggplot2::unit(0.9, "lines"),
      legend.title       = ggplot2::element_text(size = base_size - 1, face = "bold"),
      plot.margin        = ggplot2::margin(8, 8, 8, 8)
    )
}

# The Okabe-Ito colorblind-safe palette
.educabr_palette <- c(
  "#E69F00",  # orange
  "#56B4E9",  # skyblue
  "#009E73",  # green
  "#0072B2",  # blue
  "#D55E00",  # vermillion
  "#CC79A7",  # reddish purple
  "#F0E442",  # yellow
  "#000000"   # black
)

#' educabr2 Color Scales (Okabe-Ito)
#'
#' Colorblind-safe color scales for `educabr2` plots, based on the Okabe-Ito palette.
#'
#' @param ... Arguments passed on to `ggplot2::scale_colour_manual` or `ggplot2::scale_fill_manual`
#'
#' @return A ggplot2 scale function.
#'
#' @export
#' @rdname scale_educabr
scale_colour_educabr <- function(...) {
  ggplot2::scale_colour_manual(values = .educabr_palette, ...)
}

#' @export
#' @rdname scale_educabr
scale_fill_educabr <- function(...) {
  ggplot2::scale_fill_manual(values = .educabr_palette, ...)
}
