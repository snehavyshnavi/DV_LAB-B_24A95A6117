#Load and understand the "mtcars" dataset
#Load dataset

data(mtcars)

#inspect structure
str(mtcars)

#view first few rows
head(mtcars)

#basic heat map(base R)
heatmap(as.matrix(mtcars))

# Improved heat map with labels
heatmap(as.matrix(mtcars), main = "Heatmap of mtcars Dataset", colv = NA, rowv = NA)

#Heat map with Custom colors

colors <- colorRampPalette(c("blue", "yellow", "red"))(50)
heatmap(as.matrix(mtcars), col = colors, main= "Custom color Heatmap")

#Correlation Heat Map(base R)
corr_matrix <- cor(mtcars)

heatmap(corr_matrix, col = colorRampPalette(c("blue" ,"white","red"))(50),

 main = "Correlation Heatmap of mtcars")

#ggplot2 Heat Map(basic)

library(reshape2)