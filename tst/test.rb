require 'Astronomy'



son = '{
 "query": {
  "count": 1,
  "created": "2015-03-09T21:46:22Z",
  "lang": "fr-FR",
  "results": {
   "channel": {
    "title": "Yahoo! Weather - Nome, AK",
    "link": "http://us.rd.yahoo.com/dailynews/rss/weather/Nome__AK/*http://weather.yahoo.com/forecast/USAK0170_f.html",
    "description": "Yahoo! Weather for Nome, AK",
    "language": "en-us",
    "lastBuildDate": "Mon, 09 Mar 2015 12:53 pm AKDT",
    "ttl": "60",
    "location": {
     "city": "Nome",
     "country": "United States",
     "region": "AK"
    },
    "units": {
     "distance": "mi",
     "pressure": "in",
     "speed": "mph",
     "temperature": "F"
    },
    "wind": {
     "chill": "-8",
     "direction": "0",
     "speed": "0"
    },
    "atmosphere": {
     "humidity": "84",
     "pressure": "30.49",
     "rising": "1",
     "visibility": "10"
    },
    "astronomy": {
     "sunrise": "9:41 am",
     "sunset": "8:44 pm"
    },
    "image": {
     "title": "Yahoo! Weather",
     "width": "142",
     "height": "18",
     "link": "http://weather.yahoo.com",
     "url": "http://l.yimg.com/a/i/brand/purplelogo//uh/us/news-wea.gif"
    },
    "item": {
     "title": "Conditions for Nome, AK at 12:53 pm AKDT",
     "lat": "64.5",
     "long": "-165.41",
     "link": "http://us.rd.yahoo.com/dailynews/rss/weather/Nome__AK/*http://weather.yahoo.com/forecast/USAK0170_f.html",
     "pubDate": "Mon, 09 Mar 2015 12:53 pm AKDT",
     "condition": {
      "code": "30",
      "date": "Mon, 09 Mar 2015 12:53 pm AKDT",
      "temp": "-8",
      "text": "Partly Cloudy"
     },
     "description": "\n<img src=\"http://l.yimg.com/a/i/us/we/52/30.gif\"/><br />\n<b>Current Conditions:</b><br />\nPartly Cloudy, -8 F<BR />\n<BR /><b>Forecast:</b><BR />\nMon - Partly Cloudy. High: -1 Low: -16<br />\nTue - Partly Cloudy. High: 1 Low: -17<br />\nWed - Partly Cloudy. High: -2 Low: -13<br />\nThu - Partly Cloudy. High: -2 Low: -11<br />\nFri - Partly Cloudy. High: 2 Low: -8<br />\n<br />\n<a href=\"http://us.rd.yahoo.com/dailynews/rss/weather/Nome__AK/*http://weather.yahoo.com/forecast/USAK0170_f.html\">Full Forecast at Yahoo! Weather</a><BR/><BR/>\n(provided by <a href=\"http://www.weather.com\" >The Weather Channel</a>)<br/>\n",
     "forecast": [
      {
       "code": "30",
       "date": "9 Mar 2015",
       "day": "Mon",
       "high": "-1",
       "low": "-16",
       "text": "Partly Cloudy"
      },
      {
       "code": "30",
       "date": "10 Mar 2015",
       "day": "Tue",
       "high": "1",
       "low": "-17",
       "text": "Partly Cloudy"
      },
      {
       "code": "30",
       "date": "11 Mar 2015",
       "day": "Wed",
       "high": "-2",
       "low": "-13",
       "text": "Partly Cloudy"
      },
      {
       "code": "30",
       "date": "12 Mar 2015",
       "day": "Thu",
       "high": "-2",
       "low": "-11",
       "text": "Partly Cloudy"
      },
      {
       "code": "30",
       "date": "13 Mar 2015",
       "day": "Fri",
       "high": "2",
       "low": "-8",
       "text": "Partly Cloudy"
      }
     ],
     "guid": {
      "isPermaLink": "false",
      "content": "USAK0170_2015_03_13_7_00_AKDT"
     }
    }
   }
  }
 }
}'



#Astronomy
pa = JSON.parse(son);
a = Weather::Astronomy.new(pa)


puts "sunrise #{a.sunrise} ";




