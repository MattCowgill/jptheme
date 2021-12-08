
<!-- README.md is generated from README.Rmd. Please edit that file -->

# jptheme

<!-- badges: start -->
<!-- badges: end -->

jptheme provides functions to style ggplot2 charts for the Apricitas
blog by Joey Politano.

## Installation

You can install the development version of jptheme from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("mattcowgill/jptheme")
```

## Example

This is a basic example:

``` r
library(jptheme)
library(ggplot2)

ggplot(mtcars, aes(wt, mpg)) +
  geom_point() +
  theme_apricitas() +
  labs(title = "This is a title",
       subtitle = "This is a subtitle",
       caption = "This is a caption")
```

<img src="man/figures/README-example-1.png" width="100%" />
