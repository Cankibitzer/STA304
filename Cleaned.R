library(tidyverse)
library(janitor)

# Make the names easier to type
cleaned_elections_data <-
  clean_names(raw_elections_data)

# Have a look at the first six rows
head(cleaned_elections_data)
```

```{r}
cleaned_elections_data <-
  cleaned_elections_data |>
  select(
    electoral_district_name_nom_de_circonscription,
    elected_candidate_candidat_elu
  )

head(cleaned_elections_data)
```

```{r}
cleaned_elections_data <-
  cleaned_elections_data |>
  separate(
    col = elected_candidate_candidat_elu,
    into = c("Other", "party"),
    sep = "/"
  ) |>
  select(-Other)
```

```{r}
cleaned_elections_data |>
  count(party)
```