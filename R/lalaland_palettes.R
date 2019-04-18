#' List of "La La Land" palettes
#'
#' Hexadecimal codes for all 10 palettes.
#'
#' @format A list with 10 named elements.
#'
#' @details Created using stills from "La La Land", image color pickers, and \url{https://projects.susielu.com/viz-palette}.
lalaland_palettes <- list(
  CityOfStars1 = c("#FFF3CB", "#C1ADDD", "#9E5393", "#284267", "#CBF7F7"),
  CityOfStars2 = c("#E3B190","#91398D", "#4CA983", "#00023F"),
  LighthouseCafe = c("#10406B", "#3971A8", "#B4FFFF", "#D25E84", "#6D9FDA"),
  Sebs = c("#A37A6B", "#746BBB", "#B10056", "#0027AA", "#00095A"),
  Summer = c("#009A0A", "#B5EB00", "#FFE000", "#C80008", "#BB5378", "#9291E2"),
  Epilogue1 = c("#00ADFF", "#135FA7", "#000068", "#642260", "#BF3F2A", "#F99403"),
  California = c("#002299", "#4585AF", "#94A200", "#BAA7C3", "#FFC100", "#FF7900", "#B00A17"),
  LovelyNight = c("#7F4A85", "#D97F91", "#FAD053", "#C40704", "#A5AEE3", "#6259CB", "#002E8A"),
  Epilogue2 = c("#001583", "#590D5D", "#A02F81", "#D094B1", "#3EACC4", "#827BF5", "#FFC26C", "#FF7168"),
  Traffic = c("#43302B", "#603A7F", "#567695", "#82A5BA", "#9FE1E4", "#D4CCBF", "#FFE594", "#EA922B", "#B81D29")
)

#' Generates color palettes from "La La Land"
#'
#' Hexadecimal codes for a selection of color palettes inspired by the 2016 film "La La Land".
#'
#' @param name Name of the desired color palette. Choices:
#'    \code{CityOfStars1}, \code{CityOfStars2}, \code{LightHouseCafe},
#'    \code{Sebs}, \code{Summer}, \code{Epilogue1}, \code{California},
#'    \code{LovelyNight}, \code{Epilogue2}, \code{Traffic}.
#' @param n Vector of colors desired. Colors can be selected, and
#'    combinations viewed, using \code{show_lll_palette}.
#'
#' @return A vector of colors, in the form of hexadecimal codes.
#'
#' @examples
#' lll_palette("CityOfStars1")
#' lll_palette("Summer", c(1,3,5))
#'
#' ## In a ggplot2 context:
#' library(ggplot2)
#' ggplot(mtcars, aes(x = disp, y = qsec, color = as.factor(carb))) +
#' scale_color_manual(values = lll_palette("Epilogue1")) +
#' theme_minimal()
#'
#' @export
lll_palette <- function(name, n) {

  if(!name %in% names(lalaland_palettes))
    stop("This palette does not exist.")

  num_col <- length(lalaland_palettes[[name]])

  if(missing(n))
    n <- 1:num_col

  for(i in n) {
    if(i > num_col)
      stop(paste0("This palette has only ", num_col, " colors. They are numbered 1 to ", num_col, "."))
  }

  pal = lalaland_palettes[[name]][n]
  return(pal)

}

#' Displays color palettes from "La La Land"
#'
#' Prints images that depict color palettes inspired by the 2016 film "La La Land".
#'
#' @param name Name of the desired color palette. Choices:
#'    \code{CityOfStars1}, \code{CityOfStars2}, \code{LightHouseCafe},
#'    \code{Sebs}, \code{Summer}, \code{Epilogue1}, \code{California},
#'    \code{LovelyNight}, \code{Epilogue2}, \code{Traffic}.
#' @param n Vector of colors to be viewed in palette form.
#'
#' @export
show_lll_palette <- function(name, n) {

  if(!name %in% names(lalaland_palettes))
    stop("This palette does not exist.")

  num_col <- length(lalaland_palettes[[name]])

  if(missing(n))
    n <- 1:num_col

  for(i in n) {
    if(i > num_col)
      stop(paste0("This palette has only ", num_col, " colors. They are numbered 1 to ", num_col, "."))
  }

  pal = lalaland_palettes[[name]][n]
  len <- length(pal)

#' @importFrom graphics rect par image text

  old <- par(mar = c(0.5, 0.5, 0.5, 0.5))
  on.exit(par(old))

  image(1:len, 1, as.matrix(1:len), col = pal,
        xaxt = "n", yaxt = "n", bty = "n")

  rect(0.5, 0.95, len + 0.5, 1.05, col = "#FFFFFF80", lty = "blank")
  text((len + 1)/2, 1, labels = name, font = 4)

}

