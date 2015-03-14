require  'json'

module Weather
  class Condition
    
    attr_reader :code
    attr_reader :date
    attr_reader :temp
    attr_reader :text

    def initialize
    end

    def initialize(query)
      @code = query[:results][:channel][:condition][:code];
      @date = query[:results][:channel][:condition][:date]; 
      @temp = query[:results][:channel][:condition][:temp];
      @text = query[:results][:channel][:condition][:text];

      #      puts @sunrise;
    end

  end
end

