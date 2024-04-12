import os

location= 'C:/Users/Usuario/Desktop/Proyecto_parcial/python/dataset'

if not os.path.exists(location):
    os.mkdir(location)
else:
    for root,dirs,files in os.walk(location,topdown=False):
        for name in files:
            os.remove(os.path.join(root,name))
        for name in dirs:
            os.rmdir(os.path.join(root,name))

from kaggle.api.kaggle_api_extended import KaggleApi

api= KaggleApi()
api.authenticate()

print(api.dataset_list(search='henryshan'))

api.dataset_download_file('henryshan/apple-stock-price','AAPL.csv',path=location, quiet=False)
