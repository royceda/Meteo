load '../src/weather.rb'
load '../src/API/atmosphere.rb'




query = Weather.lookup(9830, Weather::Units::CELSIUS)
a = Weather::Atmosphere.new query;

puts " humidity: #{a.humidity} \n pressure: #{a.pressure} \n rising: #{a.rising} \n visibility: #{a.visibility} \n";
