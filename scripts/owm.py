#!/usr/bin/python2
# Script by Rainbow. 2016.
# Get temperature from Open Weather Map

import requests
import json

API_KEY   = "cc567ac38f665af14ffe039dbc986301"
API_CITY  = "Mar del Plata"
API_URL   = "http://api.openweathermap.org/data/2.5/weather?q=" + API_CITY  + "&units=metric&apikey=" + API_KEY
request   = requests.get(API_URL)
data_json = json.loads(request.text)

print data_json["main"]["temp"]
