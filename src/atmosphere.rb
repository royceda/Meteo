require  'json'


module Weather
  class Atmosphere
    
    attr_reader :humidity
    attr_reader :pressure
    attr_reader :rising
    attr_reader :visibility 

    def initialize
    end


    def initialize(query)
      @sunrise = query["results"]["channel"]["atmosphere"]
      @sunset  = query["results"]["channel"]["atmosphere"]

#      puts @sunrise;
    end

  end
end

