?VADeaths
class(VADeaths)
help(class)
va_df <- as.data.frame(VADeaths)
class(va_df)
View(va_df)
va_df$AgeGroups <- row.names(VADeaths)
View(va_df)
help(reshape)
va_df
va_long = reshape(va_df,
                  direction = "long",
                  varying = colnames(VADeaths),
                  v.names = "DeathRate",
                  timevar = "Population",
                  times = colnames(VADeaths)
)
View(va_long)
hist(va_long$DeathRate)
help(hist)
png("Basic_hist.png")
hist(va_long$DeathRate)
dev.off()
graphics.off()
hist(va_long$DeathRate,
     main = "Basis Histogram of VA Deathrates",
     xlab = "VA Deathrates",
     ylab = "Frequency",
     labels = TRUE)
hist(va_long$DeathRate,
     main = "Basis Histogram of VA Deathrates",
     xlab = "VA Deathrates",
     ylab = "Frequency",
     labels = TRUE,
     col = "skyblue",
     border = "red")

hist(va_long$DeathRate,
     breaks = 5,
     main = "Basis Histogram of VA Deathrates",
     xlab = "VA Deathrates",
     ylab = "Frequency",
     labels = TRUE,
     col = "skyblue",
     border = "red",
)


