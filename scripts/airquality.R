?airquality
class(airquality)
hist(airquality$Temp)

air_q <- as.data.frame(airquality)
class(air_q)
View(air_q)

library(ggplot2)
ggplot(
  air_q,
  aes(x=Temp)
)+
  geom_histogram(
    bins = 10,
    fill="pink", 
    col="red")+
  labs(
    title = "GGPLOT-Histogram",
    y = "Frequency")+
  theme_dark()
