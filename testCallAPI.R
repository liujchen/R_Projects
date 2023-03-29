library(httr)
library(jsonlite)

api_key <- "8cab935a538f43cc9bbd244647e94b9c"

city_list <- c("Sydney", "Melbourne", "Brisbane", "Perth", "Adelaide")

for (city_name in city_list) {
  url <- paste0("https://api.openweathermap.org/data/2.5/weather?q=",
  city_name, ",au&appid=", api_key, "&units=metric")

  response <- GET(url)
  data <- content(response, "text")
  current_temperature <- fromJSON(data)$main$temp
  cat(paste0("Current temperature in ", city_name, " is ",
   current_temperature, " degrees Celsius.\n"))
}