#' List of available "La La Land" palettes
#' 
#' lalaland_palettes
#' 
#' @format A list with 10 named elements, each containing the hexadecimal codes for the correspondingly named color palette.
#' 
#' @details Created using image color pickers and \url{}

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

lll_palette <- function(x, n) {
  
  if(!x %in% names(lalaland_palettes)) 
    stop("This palette does not exist.")
  
  num_col <- length(lalaland_palettes[[x]])
  
  if(missing(n))
    n <- 1:num_col
  
  for(i in n) {
    if(i > num_col)
      stop(paste0("This palette has only ", num_col, " colors. They are numbered 1 to ", num_col, "."))
  }
  
  pal = lalaland_palettes[[x]][n]
  return(pal)
  
}

show_lll_palette <- function(x, n) {
  
  if(!x %in% names(lalaland_palettes)) 
    stop("This palette does not exist.")
  
  num_col <- length(lalaland_palettes[[x]])
  
  if(missing(n))
    n <- 1:num_col
  
  for(i in n) {
    if(i > num_col)
      stop(paste0("This palette has only ", num_col, " colors. They are numbered 1 to ", num_col, "."))
  }
  
  pal = lalaland_palettes[[x]][n]
  len <- length(pal)
    
  old <- par(mar = c(0.5, 0.5, 0.5, 0.5))
  on.exit(par(old))
  
  image(1:len, 1, as.matrix(1:len), col = pal,
        xaxt = "n", yaxt = "n", bty = "n")
  
  rect(0.5, 0.95, len + 0.5, 1.05, col = "#FFFFFF80", lty = "blank")
  text((len + 1)/2, 1, labels = x, font = 4)
  
}

ggplot(mtcars, aes(x = disp, y = qsec, color = as.factor(carb))) + 
  geom_point() + 
  scale_color_manual(values = lll_palette("Summer")) + 
  theme_minimal()

