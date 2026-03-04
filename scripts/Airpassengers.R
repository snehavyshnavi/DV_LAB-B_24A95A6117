#load the dataset
AirPassengers


#verify the dataset
class(AirPassengers)
View(AirPassengers)

#convert the dataset into dataframe
ap_df <- data.frame(
  year = time(AirPassengers),
  passengers = as.numeric(AirPassengers)
)

ap_df_months <- data.frame(
  year = floor(time(AirPassengers)),
  month = cycle(time(AirPassengers)),
  passengers = as.numeric(AirPassengers)
)

ap_df_months

plot(AirPassengers)
#plot with Title, Axis labels and color
plot(AirPassengers,
     type = 'l',
     main = "Air passengers Trend Analysis",
     xlab = "Months",
     ylab = "No.of Passengers",
     col = "green"
)
#changing the Line width
plot(AirPassengers,
     type = 'o',
     lwd  = 2,
     main = "Air passengers Trend Analysis",
     xlab = "Months",
     ylab = "No.of Passengers",
     col = "green"
     )
points(AirPassengers,
       type = 'o',
       pch = 17,
       col = "maroon")
grid()
#GGPLOT2
library(ggplot2)
ggplot(ap_df, aes(year, passengers)) +
  geom_line(color = "green",linewidth = 0.5) +
  geom_point(color = "maroon") +
  labs(
    title = "Air passengers Trend Analysis",
    x = "Months",
    y = "No. of Passengers"
  )+
  geom_smooth(se=FALSE, color = 'orange')
theme_minimal()

