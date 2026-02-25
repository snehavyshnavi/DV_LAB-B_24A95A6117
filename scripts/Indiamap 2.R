#the basic leaflet widgets shows an empty map widget with no tiles or markers
library(leaflet)

#create leaflet map
india_map<-leaflet()%>%
  addTiles()%>%
  setView(lng = 78.9629,lat = 20.5937,zoom = 5)
#add circle markers for each city
india_map <- india_map%>%
  addCircleMarkers(
    data = cities_data,
    lng = ~lng,
    lat = ~lat,
    radius = ~sqrt(population)*0.01,
    color = "green",
    fillOpacity = 0.9,
    popup = ~paste("City:",city,"<br>Population:",population)
  )

india_map


#sample data with top cities of india
cities_data <- data.frame(
  city = c("Mumbai", "Delhi", "Bangalore", "Hyderabad", "Chennai", "Kolkata"),
  states = c("Karnataka","Telangana","West bengal"),
  lat  = c(19.0760, 28.7041, 12.9716, 17.3850, 13.0827, 22.5726),
  lng  = c(72.8777, 77.1025, 77.5946, 78.4867, 80.2707, 88.3639),
  population = c(20411000, 32941000, 13608000, 10004000, 11324000, 14850000)
)
# add markers to the cities 
cities_data

