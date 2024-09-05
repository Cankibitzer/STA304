```{r}
library(tidyverse)
library(janitor)
```

```{r}
simulated_data <-
  tibble(
    # Use 1 through to 338 to represent each division
    "Division" = 1:338,
    # Randomly pick an option, with replacement, 151 times
    "Party" = sample(
      x = c("Liberal", "Labor", "National", "Green", "Other"),
      size = 338,
      replace = TRUE
    )
  )

simulated_data
```