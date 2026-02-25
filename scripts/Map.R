#load leaf lib
library(leaflet)
#create map widget 
map <- leaflet()
#print map widget with tiles and markers
map <- leaflet()%>%addTiles()%>%addMarkers( lng =82.0670874,
                                            lat = 17.0893355,
                                            popup = "aditya university")
#print map
map