require  'json'

module Weather
  class Wind
    
    attr_reader :chill
    attr_reader :direction
    attr_reader :speed

    def initialize
    end


    def initialize(query)
      @chill     = query["results"]["channel"]["wind"]["chill"];
      @direction = query["results"]["channel"]["wind"]["direction"]; 
      @speed     = query["results"]["channel"]["wind"]["speed"];

#      puts @sunrise;
    end

  end
end

