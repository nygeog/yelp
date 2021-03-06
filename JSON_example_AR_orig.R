##############################################################################
# Reading in a JSON file into R
##############################################################################

#install.packages("rjson")
library("rjson")

path <- "data/yelp_academic_dataset_business.json"
json_lines<-readLines(path)

# Creating Summary matrix

# I'm only pulling out business, latitude and longitude but you can pull out all the different characteristics
json_temp<-fromJSON(json_lines[1])
names(json_temp)

# [1] "business_id"   "full_address"  "hours"         "open"          "categories"    "city"         
# [7] "review_count"  "name"          "neighborhoods" "longitude"     "state"         "stars"        
# [13] "latitude"      "attributes"    "type"   

summary<-matrix(nrow=length(json_lines), ncol=6)
colnames(summary)<-c("business_id", "latitude", "longitude", "name", "review_count","categories")
summary

# lapply didn't work for some reason so I had to make a loop. 

for(ii in 1:length(json_lines)){
  json<-fromJSON(json_lines[ii])
  summary[ii, "business_id"]<-json$business_id
  summary[ii, "latitude"]<-json$latitude 
  summary[ii, "longitude"]<-json$longitude
  summary[ii, "name"]<-json$name
  summary[ii, "review_count"]<-json$review_count
  #summary[ii, "categories"]<-json$categories[1]
}

head(summary)

write.csv(summary, "Yelp_JSON_summary.csv")