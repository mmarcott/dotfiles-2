#!/usr/bin/python2
# Script by Rainbow. 2016.
# Get temperature from SMN (Servicio Mereologico Nacional)
# Configure to run every hour. If you send too many requests they might ban you.

import requests
from BeautifulSoup import BeautifulSoup

SMN_CITY  = "Mar_del_Plata"
SMN_URL   = "http://www.smn.gov.ar/mobile/estado_movil.php?ciudad=" + SMN_CITY

try:
    request   = requests.get(SMN_URL, timeout=3)
    soup      = BeautifulSoup(request.text)
    TEMP_NOW  = soup.find("span", { "class": "temp_grande"}).text.encode("UTF-8")
    print TEMP_NOW
except:
    print "Service down"
