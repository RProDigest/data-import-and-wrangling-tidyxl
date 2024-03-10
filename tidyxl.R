################################################################
#' Written by RProDigest
#' 10th March 2024
#' Demonstrate ingesting excel workbook with {tidyxl}
#' Dataset: https://www.ers.usda.gov//webdocs//DataFiles//50673//CPIForecast.xlsx?v=5514.7
#' #############################################################

# Load packages -------------

if (!require(pacman))
  install.packages("pacman")
pacman::p_load(readxl,
               dplyr,
               tidyxl)


# Syntax for tidyxl ---------------
# data <- xlsx_cells("path/to/excel_file.xlsx")

# Download the data and place it in your working directory

# {tidyxl} example -------------------

data_tidyxl <- tidyxl::xlsx_cells("CPIForecast.xlsx")

data_tidyxl |>
  dplyr::glimpse()

# {readxl} example ---------------------

data_readxl <- readxl::read_excel("CPIForecast.xlsx")

data_readxl |>
  dplyr::glimpse()
