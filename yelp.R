#install the necessary packages

#install.packages("rjson")
#library("rjson")

#JSON FILE LOCATION ON DROPBOX "https://www.dropbox.com/s/hjbrs5ndny17ztj/yelp_academic_dataset_business.json"
json_file <- "/Users/danielmsheehan/Dropbox/GIS/Data/Commercial/yelp/yelp_phoenix_academic_dataset/yelp_academic_dataset_business.json"
json_data <- fromJSON(paste(readLines(json_file), collapse=""))

business <- json_data[("business_id")]
longitude <- json_data[("longitude")]
latitude <- json_data[("latitude")]
