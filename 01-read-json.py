import json
import pandas as pd

inFile  = '/Users/danielmsheehan/Dropbox/GIS/Data/Commercial/yelp/yelp_phoenix_academic_dataset/yelp_academic_dataset_business.json'
outFile = '/Users/danielmsheehan/Dropbox/GIS/Data/Commercial/yelp/yelp_phoenix_academic_dataset/yelp_academic_dataset_business.csv'

from pandas.io.json import json_normalize

data = json.loads(inFile)

json_normalize(data['business_id'])
#data=open(inFile)
#data=json.loads(inFile)


from pandas.io.json import json_normalize

#df = pd.read_json(inFile)
#data=json.loads(inFile)
#df = pd.DataFrame(data,columns=["business_id"])

#print data


#df = pd.read_json(data)

#df.head(25)

#df.to_csv(outFile, index=False)