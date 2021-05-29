library(tidyverse)
library(readxl)
book <- read.csv("data.csv")
glimpse(book)

summary(book)

best <- book %>% 
    group_by(Name) %>%
    summarise(rate=mean(Reviews)) %>%
    arrange(desc(rate))

head(best,10)

price <- book %>% 
    group_by(Name) %>%
    summarise(rate=mean(Price)) %>%
    arrange(desc(rate))

head(price,10)
