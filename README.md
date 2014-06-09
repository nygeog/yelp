yelp
====

So this yelp.R file I'm only getting the single first record returned. I'm trying to do this in R b/c I think (or the internet told me) that R is better with JSON with trailing data.

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
  
