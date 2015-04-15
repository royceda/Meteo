# -*- coding: iso-8859-1 -*-
load '../src/weather.rb'
load '../src/API/atmosphere.rb'
load '../src/API/location.rb'
load '../src/API/astronomy.rb'
load '../src/API/forecast.rb'
load '../src/API/condition.rb'


woeid = Weather.getWoeid( "Bordeaux", "France")

a = woeid.instance_of? Integer
puts a

query = Weather.lookup(woeid, Weather::Units::CELSIUS)


a  = Weather::Atmosphere.new query;
l  = Weather::Location.new query;

as = Weather::Astronomy.new query
c  = Weather::Condition.new query


puts "Pour la ville de #{l.city} ( #{l.country}, #{l.region})\n "

puts "Atmosphere:\n humidity: #{a.humidity} % \n pressure: #{a.pressure} \n rising: #{a.rising} \n visibility: #{a.visibility} km \n";

puts "Astronomy:\n Sunrise: #{as.sunrise} \n Sunset: #{as.sunset}\n"

puts "Condition:\n code: #{c.code} \n date: #{c.date} \n temp: #{c.temp} °C \n text: #{c.text}\n"

for i in 0..4

  f = Weather::Forecast.new query, i;
  puts "Forecast:\n code: #{f.code} \n date: #{f.date} \n day: #{f.day} \n high: #{f.high} \n low: #{f.low} \n text: #{f.text} \n "
end
