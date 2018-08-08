library(tidyverse)
library(lubridate)

setwd(~/"Downloads")
(df1 <- read_csv("Crop_example1.0 TL.csv"))
df1

df2 <- df1 %>% 
  gather("Date,"Value", c(=cCrop, -Type"))

View(df2)
df2 <- df1 %>%
  gather("Date, "Value, c(-Crop,-Type))