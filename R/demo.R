#' Demo
#'
#' @export
demo <- function(png_filename) {
  martini_tower <- data.frame(lat = 53.219167, lon = 6.568056)
  bbox <- osmdata::getbb("Groningen", featuretype = "state")
  groningen <- ggmap::get_map(bbox, maptype = "toner_stamen", quiet = TRUE)
  p <- ggmap::ggmap(groningen) +
       ggplot2::geom_point(data = martini_tower,
                           ggplot2::aes(x = .data$lon, y = .data$lat),
                           colour = I("red"), size = I(3))
  ggplot2::ggsave(filename = png_filename, plot = p)
}

# demo: no visible binding for global variable 'lon'
# demo: no visible binding for global variable 'lat'
# Undefined global functions or variables:
# lat lon
