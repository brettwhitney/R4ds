Chapter 3 - Data Visualization
================
Brett Whitney
Jan 8, 2021

### Introduction to Explore Section

Data exploration means looking at data, quickly generate
questions/hypotheses, test them, and repeat. We want to generate many
promising avenues for in-depth investigation.

``` r
library(tidyverse)
```

    ## -- Attaching packages --------------------------------------- tidyverse 1.3.0 --

    ## v ggplot2 3.3.3     v purrr   0.3.4
    ## v tibble  3.0.4     v dplyr   1.0.2
    ## v tidyr   1.1.2     v stringr 1.4.0
    ## v readr   1.4.0     v forcats 0.5.0

    ## -- Conflicts ------------------------------------------ tidyverse_conflicts() --
    ## x dplyr::filter() masks stats::filter()
    ## x dplyr::lag()    masks stats::lag()

### 3.2

Do cars with big engines use more fuel than cars with small engines?
Definitely a positive correlation between these two, I’m gonna guess the
relationship is also fairly linear.

``` r
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy))
```

![](data_visualization_files/figure-gfm/unnamed-chunk-2-1.png)<!-- -->

Plot shows as engine size increases, the mpg of the car decreases,
confirming that there is a positive relationship between a car’s engine
size and how much fuel it uses.

`ggplot()` creates an empty plot to which we add layers using functions
like `geom_point()`. Each geom function takes a `mapping` parameter
which maps variables to visual properties, like the x and y axis of a
scatterplot.

#### 3.2 Exercises

1.  Run `ggplot(data = mpg)`. What do you see?

<!-- end list -->

``` r
ggplot(data = mpg)
```

![](data_visualization_files/figure-gfm/unnamed-chunk-3-1.png)<!-- -->

    Running this code yields a light gray box with just a touch of white 
    padding around the edges.

2.  How many rows are in `mpg`? How many columns?

<!-- end list -->

``` r
nrow(mpg)
```

    ## [1] 234

``` r
ncol(mpg)
```

    ## [1] 11

    234 rows and 11 columns.

3.  What does the `drv` variable describe? Read the help for `?mpg` to
    find out.

<!-- end list -->

``` r
?mpg
```

    ## starting httpd help server ... done

    `drv` describes if the vehicle is front, rear, or four wheel drive. 

4.  Make a scatterplot of `hwy` vs `cyl`.

<!-- end list -->

``` r
ggplot(data = mpg) +
  geom_point(mapping = aes(x = hwy, y = cyl))
```

![](data_visualization_files/figure-gfm/unnamed-chunk-6-1.png)<!-- -->

5.  What happens if you make a scatterplot of `class` vs `drv`? Why is
    the plot not useful?

<!-- end list -->

``` r
ggplot(data = mpg) +
  geom_point(mapping = aes(x = class, y = drv))
```

![](data_visualization_files/figure-gfm/unnamed-chunk-7-1.png)<!-- -->

This plot isn’t useful because neither variable is continuous/numeric,
they are both categorical.
