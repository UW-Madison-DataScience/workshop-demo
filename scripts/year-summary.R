# Script to create important plots and tables for a single year

library(dplyr)
library(ggplot2)
library(knitr)


#  Read in the data
surveys <- read.csv('../clean_data/portal_data_joined.csv')

# Pick specific year and filter data to only that year
specific_year = 1980
year_surveys <- surveys %>% filter(year == specific_year)

# Taxon count table for the year
kable(year_surveys %>% count(taxa))

# weight v hindfoot length scatter for specific year
ggplot(year_surveys, aes(x=hindfoot_length, y=weight, color=species_id)) +
  geom_point()

# weight v hindfoot length, colored by sex, scatter for each species for specific year
# note this plot removes all the entries where weight or hindfoot_length are missing prior to plotting
year_surveys %>% filter(!is.na(weight), !is.na(hindfoot_length)) %>% 
ggplot(aes(x=hindfoot_length, y=weight, color=sex)) +
  geom_point() +
  facet_wrap(~species_id)

# monthly genus counts for specific year
year_surveys %>% count(genus, month) %>% 
ggplot(aes(x = month, y = n, color = genus)) + 
  geom_line()




