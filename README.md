# Palettes inspired by “La La Land”

I think *La La Land*’s use of color is breathtakingly beautiful, so I
made an R package of palettes based on stills from the film. I used a
combination of online image color pickers and Susie Lu’s [Viz
Palette](https://projects.susielu.com/viz-palette) to build
    them.

## Installing and loading the package:

``` r
devtools::install_github("simranvatsa/lalaland")
library(lalaland)
```

-----

## The functions:

`show_lll_palette(name, n)`: prints the selected palette/subsection of
palette as an image

`lll_palette(name, n)`: generates a vector containing hex codes for the
the selected palette/subsection of palette

`lalaland_palettes`: named list containing all palettes

-----

<br/>

-----

## California:

![](stills/california.jpeg)

``` r
show_lll_palette("California")
```

![](README_files/figure-gfm/unnamed-chunk-3-1.png)<!-- -->

-----

<br/>

-----

## City Of Stars \#1:

![](stills/cityofstars1.jpeg)

``` r
show_lll_palette("CityOfStars1")
```

![](README_files/figure-gfm/unnamed-chunk-4-1.png)<!-- -->

-----

<br/>

-----

## City Of Stars \#2:

![](stills/cityofstars2.jpeg)

``` r
show_lll_palette("CityOfStars2")
```

![](README_files/figure-gfm/unnamed-chunk-5-1.png)<!-- -->

-----

<br/>

-----

## Epilogue \#1:

![](stills/epilogue1.jpeg)

``` r
show_lll_palette("Epilogue1")
```

![](README_files/figure-gfm/unnamed-chunk-6-1.png)<!-- -->

-----

<br/>

-----

## Epilogue \#2:

![](stills/epilogue2.jpeg)

``` r
show_lll_palette("Epilogue2")
```

![](README_files/figure-gfm/unnamed-chunk-7-1.png)<!-- -->

-----

<br/>

-----

## LighthouseCafe:

![](stills/lighthousecafe.jpeg)

``` r
show_lll_palette("LighthouseCafe")
```

![](README_files/figure-gfm/unnamed-chunk-8-1.png)<!-- -->

-----

<br/>

-----

## LovelyNight:

![](stills/lovelynight.jpeg)

``` r
show_lll_palette("LovelyNight")
```

![](README_files/figure-gfm/unnamed-chunk-9-1.png)<!-- -->

-----

<br/>

-----

## Sebs:

![](stills/sebs.jpeg)

``` r
show_lll_palette("Sebs")
```

![](README_files/figure-gfm/unnamed-chunk-10-1.png)<!-- -->

-----

<br/>

-----

## Summer:

![](stills/summer.jpeg)

``` r
show_lll_palette("Summer")
```

![](README_files/figure-gfm/unnamed-chunk-11-1.png)<!-- -->

-----

<br/>

-----

## Traffic:

![](stills/traffic.jpeg)

``` r
show_lll_palette("Traffic")
```

![](README_files/figure-gfm/unnamed-chunk-12-1.png)<!-- -->

-----

<br/>

-----

## Using the palettes\!

``` r
library(ggplot2)
```

    ## Warning: package 'ggplot2' was built under R version 3.5.2

``` r
ggplot(iris, aes(x = Sepal.Length, y = Petal.Length, color = Species)) +
  geom_point() +
  scale_color_manual(values = lll_palette("CityOfStars1", c(2,3,4))) +
  theme_minimal() +
  labs(title = "Sepal and petal lengths for the iris dataset, colored by species")
```

![](README_files/figure-gfm/unnamed-chunk-13-1.png)<!-- -->

``` r
ggplot(diamonds[diamonds$carat < 3, ], aes(x = carat, fill = cut)) +
  geom_histogram(bins = 20) +
  scale_fill_manual(values = lll_palette("Sebs")) +
  theme_minimal() +
  labs(title = "Distribution of carat values of diamonds")
```

![](README_files/figure-gfm/unnamed-chunk-13-2.png)<!-- -->

``` r
ggplot(mpg, aes(x = class, fill = as.factor(cyl))) +
  geom_bar() +
  scale_fill_manual(values = lll_palette("LighthouseCafe", c(1,3,2,4))) +
  theme_minimal() +
  labs("Number of cars by class and cylinders in the mpg dataset")
```

![](README_files/figure-gfm/unnamed-chunk-13-3.png)<!-- -->
