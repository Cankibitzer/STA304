library(tidyverse)
library(janitor)
#### Read in the data ####
raw_elections_data <-
  read_csv(
    file = 
      "table_tableau11.csv",
    show_col_types = FALSE,
    #skip = 1
  )

# We have read the data from the AEC website. We may like to save
# it in case something happens or they move it.
write_csv(
  x = raw_elections_data,
  file = "Canada.csv"
)