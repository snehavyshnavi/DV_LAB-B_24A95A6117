#Load and Understand the HairEyeColordataset
#Load dataset

data(HairEyeColor)

#Check structure
str(HairEyeColor)
View(HairEyeColor)
?HairEyeColor

#Very basic Mosaic Plot(Base R)
mosaicplot(HairEyeColor)

#Add Titles and Colors
mosaicplot(HairEyeColor, main = "Mosaic Plot: Hair,Eye Color and Sex",
           color = TRUE)