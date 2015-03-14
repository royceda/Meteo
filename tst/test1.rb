load '../src/weather.rb'
load '../src/API/atmosphere.rb'
load '../src/API/location.rb'
load '../src/API/astronomy.rb'
#load '../src/API/forecast.rb'


query = Weather.lookup(580778, Weather::Units::CELSIUS)

a = Weather::Atmosphere.new query;
l = Weather::Location.new query;
#f = Weather::Forecast.new query;
as = Weather::Astronomy.new query

puts "Pour la ville de #{l.city} ( #{l.country}, #{l.region})\n "

puts "Atmosphere:\n humidity: #{a.humidity} % \n pressure: #{a.pressure} \n rising: #{a.rising} \n visibility: #{a.visibility} km \n";

puts "Astronomy:\n Sunrise: #{as.sunrise} \n Sunset: #{as.sunset}\n"
