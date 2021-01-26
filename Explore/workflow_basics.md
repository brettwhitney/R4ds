Chapter 4 - R4DS
================
Brett Whitney
1/26/2021

## Chapter 4 - Workflow Basics

Welcome to my notes on chapter 4 of R for Data Science\! You might
notice that I switched to making these notes in a `.Rmd` document rather
than a `.R` script. This is primarily due to the length and composition
of my notes for chapter three; it seemed the balance of my notes were
prose rather than code.

Note that because I’m not brand new to R and RStudio, I am already
familiar with a lot of the tips in this chapter so my notes are only
going to highlight new stuff, quotes, etc that are meaningful to me.

**The only way to get over \[being frustrated\] is to keep trying**

**Code is miserable to read on a good day** - so use good formatting
practices.

### New Tricks

For the console - say I have an object with a cumbersome name like
`this_is_a_really_long_name` and I recently (in the current session)
assigned it a value of 2.5 using this code:

``` r
this_is_a_really_long_name <- 2.5
```

Now I want to assign it the value 3.5 instead. By typing enough of the
object name (ie `this`) I can then use the shortcut ctrl + up to get a
list of previously executed commands starting with that string of
letters. I can use the arrow keys to select the command I want to edit,
hit enter, then edit the command without retyping the whole thing.

You can make assignment and printing the value of an object happen
simultaneously by surrounding a statement with regular old parentheses.

``` r
(y <- seq(1, 10, length.out = 5))
```

    ## [1]  1.00  3.25  5.50  7.75 10.00

### Exercises

1.  Why does this code not work?

<!-- end list -->

``` r
my_variable <- 10
my_varıable
```

    ## [1] 10

Haha, this code is suppposed to produce an error saying `my_varıable`
doesn’t exist, but for some reason it’s giving me the value of 10
assigned to `my_variable`. It should error out because they use two
different characters for the letter ‘i’.

2.  Tweak each of the following R commands so that they run correctly:

Original commands:

``` r
ggplot(dota = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy))

fliter(mpg, cyl = 8)
filter(diamond, carat > 3)
```

Fixed commands:

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

``` r
ggplot(data = mpg) + # typo in "data" argument name
  geom_point(mapping = aes(x = displ, y = hwy))
```

![](workflow_basics_files/figure-gfm/q2_code_response-1.png)<!-- -->

``` r
filter(mpg, cyl == 8) # typo in filter() function call and misuse of "=" for comparison
```

    ## # A tibble: 70 x 11
    ##    manufacturer model     displ  year   cyl trans  drv     cty   hwy fl    class
    ##    <chr>        <chr>     <dbl> <int> <int> <chr>  <chr> <int> <int> <chr> <chr>
    ##  1 audi         a6 quatt~   4.2  2008     8 auto(~ 4        16    23 p     mids~
    ##  2 chevrolet    c1500 su~   5.3  2008     8 auto(~ r        14    20 r     suv  
    ##  3 chevrolet    c1500 su~   5.3  2008     8 auto(~ r        11    15 e     suv  
    ##  4 chevrolet    c1500 su~   5.3  2008     8 auto(~ r        14    20 r     suv  
    ##  5 chevrolet    c1500 su~   5.7  1999     8 auto(~ r        13    17 r     suv  
    ##  6 chevrolet    c1500 su~   6    2008     8 auto(~ r        12    17 r     suv  
    ##  7 chevrolet    corvette    5.7  1999     8 manua~ r        16    26 p     2sea~
    ##  8 chevrolet    corvette    5.7  1999     8 auto(~ r        15    23 p     2sea~
    ##  9 chevrolet    corvette    6.2  2008     8 manua~ r        16    26 p     2sea~
    ## 10 chevrolet    corvette    6.2  2008     8 auto(~ r        15    25 p     2sea~
    ## # ... with 60 more rows

``` r
filter(diamonds, carat > 3) # typo in data set name
```

    ## # A tibble: 32 x 10
    ##    carat cut     color clarity depth table price     x     y     z
    ##    <dbl> <ord>   <ord> <ord>   <dbl> <dbl> <int> <dbl> <dbl> <dbl>
    ##  1  3.01 Premium I     I1       62.7    58  8040  9.1   8.97  5.67
    ##  2  3.11 Fair    J     I1       65.9    57  9823  9.15  9.02  5.98
    ##  3  3.01 Premium F     I1       62.2    56  9925  9.24  9.13  5.73
    ##  4  3.05 Premium E     I1       60.9    58 10453  9.26  9.25  5.66
    ##  5  3.02 Fair    I     I1       65.2    56 10577  9.11  9.02  5.91
    ##  6  3.01 Fair    H     I1       56.1    62 10761  9.54  9.38  5.31
    ##  7  3.65 Fair    H     I1       67.1    53 11668  9.53  9.48  6.38
    ##  8  3.24 Premium H     I1       62.1    58 12300  9.44  9.4   5.85
    ##  9  3.22 Ideal   I     I1       62.6    55 12545  9.49  9.42  5.92
    ## 10  3.5  Ideal   H     I1       62.8    57 12587  9.65  9.59  6.03
    ## # ... with 22 more rows

3.  Press Alt + Shift + K. What happens? How can you get to the same
    place using the menus?

Keyboard shortcuts, woot woot. Help -\> Keyboard Shortcuts Help in the
top level toolbar brings up the same shortcut cheatsheet.
