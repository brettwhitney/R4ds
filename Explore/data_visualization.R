#' ---
#' title: "Chapter 3 - Data Visualization"
#' author: "Brett Whitney"
#' date: "Jan 8, 2021"
#' output: github_document
#' ---
#' 

#' ### Introduction to Explore Section
#' Data exploration means looking at data, quickly generate 
#' questions/hypotheses, test them, and repeat.
#' We want to generate many promising avenues for in-depth investigation.
#' 

library(tidyverse)

#' ### 3.2
#' Do cars with big engines use more fuel than cars with small engines?
#' Definitely a positive correlation between these two, 
#' I'm gonna guess the relationship is also fairly linear.
#' 

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy))

#' Plot shows as engine size increases, the mpg of the car decreases, 
#' confirming that there is a positive relationship between a car's engine size 
#' and how much fuel it uses.
#' 
#' `ggplot()` creates an empty plot to which we add layers using functions like `geom_point()`. 
#' Each geom function takes a `mapping` parameter which maps variables to visual 
#' properties, like the x and y axis of a scatterplot. 
#' 
#' #### 3.2 Exercises
#' 
#' 1. Run `ggplot(data = mpg)`. What do you see?

ggplot(data = mpg)

#' Running this code yields a light gray box with just a touch of white 
#' padding around the edges.
#'     
#' 2. How many rows are in `mpg`? How many columns?
 
nrow(mpg)
ncol(mpg)

#' 234 rows and 11 columns.
#'     
#' 3. What does the `drv` variable describe? Read the help for `?mpg` to find out.

?mpg

#' `drv` describes if the vehicle is front, rear, or four wheel drive. 
#'     
#' 4. Make a scatterplot of `hwy` vs `cyl`.

ggplot(data = mpg) +
  geom_point(mapping = aes(x = hwy, y = cyl))

#' 5. What happens if you make a scatterplot of `class` vs `drv`? Why is the plot not useful?

ggplot(data = mpg) +
  geom_point(mapping = aes(x = class, y = drv))

#' This plot isn't useful because neither variable is continuous/numeric, 
#' they are both categorical.