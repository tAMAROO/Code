#######################################################################
#                                                                     #
#                       Weather2Wallpaper                             #
#                                                                     #
#  This program will Change your wallpaper depending on the           #
#  weather of the city you choose using request-html module and       #
#  ctypes.  This will only change the wallpaper on Windows for now.   #
#                         Date: 4/18/2024                             #
#                                                                     #
#######################################################################

# Load required modules
from requests_html import HTMLSession
import ctypes

# Define the list of words used by google to describe the weather that
# is pulled in weatherType
sun = ['Sunny', 'Clear', 'Mostly sunny',]
sunCover = ['Partly sunny', 'Overcast', 'Partly cloudy', 'Mostly cloudy', 'Clear with periodic clouds']
cloud = ['Cloudy', 'Fog', 'Smoke', 'Haze', 'Windy']
rain = [ 'Showers', 'Scattered showers', 'Chance of rain', 'Rain', 'Chance of storm', 'Light rain', 'Mist', 'Light rain showers']
tStorm = ['Scattered thunderstorms', 'Storm', 'Thunderstorm', 'Chance of tstorm']
coldRain = ['Light snow', 'Low drifting snow', 'Freezing drizzle', 'Chance of snow', 'Sleet', 'Snow', 'Icy', 'Dust', 'Flurries', 'Snow showers', 'Ice/snow', 'Scattered snow showers']
colderRain = ['Rain and snow']

# Places HTMLSession into the string "s"
s = HTMLSession()

# Captures user input for the weather
# and creates string query
query = input("Please enter your city: " )

# Base url for the search of the weather on google
# takes input in query and places it into the base url
# Uses this to create the url string
url = f'https://www.google.com/search?q=weather+{query}'

# Fetches the data from the base url and uses the User Agent
# to bypass the "Are you a bot" authentication and uses the google
# 'my user agent' in the header
r = s.get(url, headers={'User-Agent': ''})

#Scraps the information of the city the user searches for
title = r.html.find('span.BBwThe', first=True).text

# Scrapes the time from the google search in the wob_dts div, creates the
# string time, and prints the scraped text
gTime = r.html.find('div.wob_dts', first=True).text

# Scrapes the temperature from the span id wob_tm, creates the
# string temp, and prints the scraped text
temp = r.html.find('span#wob_tm', first=True).text

# Scrapes the temperature unit from the div id vk_bk.wob-unit > span wob_t, 
# creates the string tempUnit, and prints the scraped text
tempUnit = r.html.find('div.vk_bk.wob-unit span.wob_t', first=True).text

# Scrapes the temperature unit from the div id VQF4g and searches for
# span wob_dc, creates the string weatherType, and prints the scraped text
weatherType = r.html.find('div.VQF4g', first=True).find('span#wob_dc', first=True).text

# Prints data from the strings title, gTime, temp, tempUnit, weatherType
# and adds color to the out put: light blue - \033[1;34m, light cyan - \033[0;36m'
print('\033[1;34m'+title+'\033[1;34m')
print('\033[0;36m'+gTime+'\033[0;36m')
print('\033[0;36m'+temp, tempUnit+'\033[0;36m')
print('\033[0;36m'+weatherType+'\033[0;36m')

# If the the data from watherType matches what is in the corresponding weather
# list it then changes wallpaper to corresponding wallpaper using ctypes module.
if weatherType in sun:
  ctypes.windll.user32.SystemParametersInfoW(20, 0, "Weather2Wallpaper\Images\sun.png" , 0)
elif weatherType in sunCover:
  ctypes.windll.user32.SystemParametersInfoW(20, 0, "Weather2Wallpaper\Images\cloudy.png" , 0)
elif weatherType in cloud:
  ctypes.windll.user32.SystemParametersInfoW(20, 0, "Weather2Wallpaper\Images\cloud.png" , 0)
elif weatherType in rain:
  ctypes.windll.user32.SystemParametersInfoW(20, 0, "Weather2Wallpaper\Images\water.png" , 0)
elif weatherType in tStorm:
  ctypes.windll.user32.SystemParametersInfoW(20, 0, "Weather2Wallpaper\Images\storm.png" , 0)
elif weatherType in coldRain:
  ctypes.windll.user32.SystemParametersInfoW(20, 0, "Weather2Wallpaper\Images\snow.png" , 0)
elif weatherType in colderRain:
  ctypes.windll.user32.SystemParametersInfoW(20, 0, "Weather2Wallpaper\Images\snowandwater.png" , 0)
 
# If weatherType data is something not listed in the list
# this will print a warning  
else:
   print('Weather Not on the List')
