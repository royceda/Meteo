require  'json'


module Weather
  class Astronomy
    
    attr_reader :sunrise
    attr_reader :sunset

    def initialize
    end


    def initialize(query)
      @sunrise = query["results"]["channel"]["astronomy"]
      @sunset  = query["results"]["channel"]["astronomy"]

#      puts @sunrise;
    end

  end
end

