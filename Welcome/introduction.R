#' ---
#' title: "Notes and Code from Introduction"
#' author: "Brett Whitney"
#' date: "Jan 5, 2021"
#' output: github_document
#' ---
#' 
#' Tidy data: each column is a variable, each row is an observation. 
#' Tidy data lets you focus on analyzing the data rather than getting the data in the right format for different functions/packages.
#' 
#' Good analysis usually iterates between all the various stages but...
#' going back and forth between modeling/visualization/transformation absolutely vital!
#' A model cannot question the assumptions it is built upon so it can't surprise you like a visualization might. 
#' 
#' ### Hypothesis Generation vs. Hypothesis Confirmation
#' Hypothesis Generation...
#' - Look deeply at data and create a hypothesis about why it behaves a certain way. 
#' - Informal evaluation of hypotheses, through personal skepticism and challenging the data
#' 
#'  Hypothesis Confirmation...
#'  - Often requires sophisticated stats
#'  - Can only use an observation one time (little confused about what this means in this context) 
#'  
#'  Visualization and modeling are not exclusive to either the generation or confirmation activity!
#'  
#'  ### Some pre-requisites for making the book work
#'  Need to install several packages and what not in order for the code in the book to run smoothly on my local machine. 
## Re-Installing tidyverse just to make sure I'm being thorough with my notes
## install.packages("tidyverse")

## To use a package you've got to go to the library
## library(tidyverse)

#' Didn't know about this one, you can use `tidyverse_update()` to check for updates to packages within the tidyverse and choose which to install.
#' 
## Make sure I've got the other necessary packages for this book (all as data sources)
## install.packages(c("nycflights13", "gapminder", "Lahman"))

#' ### Reproducible Examples (reprex)
#' Using a reprex is a vital part of asking good questions on places like stack overflow. Good questions get good answers!
#' 
#' 1. Packages - include packages at the top of the example so people know what you're using without searching.
#' 2. Include the data with something like `dput()` which generates the R code to recreate a given dataset (like `mtcars`)
#'  - Try to include the smallest amount of data necessary to reveal the issue
#' 3. Write concise code that follows best practices so it's easy to understand and therefore easier to fix.
#' 4. Make sure the reprex actually runs in a fresh R session!!!
