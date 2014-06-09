yelp
====

So this yelp.R file I'm only getting the single first record returned. I'm trying to do this in R b/c I think (or the internet told me) that R is better with JSON with trailing data.


This is the R code I have so far, but only shows the first record.

	json_file <- "/Users/danielmsheehan/Dropbox/GIS/Data/Commercial/yelp/yelp_phoenix_academic_dataset/yelp_academic_dataset_business.json"
	json_data <- fromJSON(paste(readLines(json_file), collapse=""))

	business <- json_data[("business_id")]
	longitude <- json_data[("longitude")]
	latitude <- json_data[("latitude")]


So I'm assuming I need to do some sort of for loop.
So like in python/R mixed it'd be something like

	theFile = csv.reader(open(infile,"rb"))
	
	business_id = []
	latitude    = []
	longitude   = []
	
	for row in theFile:
    	business_id.append(json_data[("business_id")])
    	latitude.append(json_data[("latitude")])
    	longitude.append(json_data[("longitude")])
  
In R it seems like loops are weird so I guess I'm looking for something like this:

	dataLIST1 = [] #empty list
	dataLIST2 = []
	dataLIST3 = []

	for (i in RowsOfJSON) {
		dataLIST1 = json_data[("business_id")]
		dataLIST2 = json_data[("latitude")]
		dataLIST3 = json_data[("longitude")]
	}
	
	#then combine this lists as columns in a dataframe
	
	
	