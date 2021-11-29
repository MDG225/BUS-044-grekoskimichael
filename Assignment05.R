library(readr)
data1 <- read_csv("TBQ05.20211116133909.csv")
View(data1)
data1$VALUE <- as.numeric(data$VALUE)
sapply(data1, class)

data1$C01713V02044 <- replace(data$C01713V02044, data$C01713V02044=="-","0")
data1$C01713V02044 <- replace(data$C01713V02044, data$C01713V02044=="-","0")

by(data1[,'VALUE'], data1['Region of Trade'], sum)
install.packages("tidyverse")
library(tidyverse)

data1<-data1[which(data$C01713V02044==1),]
view(data1)
p <- ggplot(data = data1
            mapping = aes(x= quarter,
                          y = tonnage))
p + geom_point(mapping=aes(group = port))
title = "Quarterly Tonnage Arriving From Great Brittian and Northern Ireland"