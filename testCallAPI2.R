library(httr)
library(jsonlite)
library(knitr)

api_key <- "8cab935a538f43cc9bbd244647e94b9c"
city_list <- c("Sydney", "Melbourne", "Brisbane", "Perth", "Adelaide")


weather_data <- data.frame(city = character(), temperature = numeric(),
 stringsAsFactors = FALSE)

for (city_name in city_list) {
  url <- paste0("https://api.openweathermap.org/data/2.5/weather?q=",
   city_name, ",au&appid=", api_key, "&units=metric")
  response <- GET(url)
  data <- content(response, "text")
  current_temperature <- fromJSON(data)$main$temp
  weather_data <- rbind(weather_data, data.frame(city = city_name,
   temperature = current_temperature))
}

x <- kable(weather_data)
cat(x, sep = "\n")