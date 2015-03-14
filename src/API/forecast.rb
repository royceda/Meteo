require  'json'

module Weather
  class Forecast
    
    attr_reader :code
    attr_reader :date
    attr_reader :day
    attr_reader :high
    attr_reader :low
    attr_reader :text

    def initialize
    end

    def initialize(query)
      
      @code = query[:results][:channel][:item][:forecast][1][:code];
      @date = query[:results][:channel][:item][:forecast][1][:date]; 
      @day  = query[:results][:channel][:item][:forecast][1][:day];
      @high = query[:results][:channel][:item][:forecast][1][:high];
      @low  = query[:results][:channel][:item][:forecast][1][:low];
      @text = query[:results][:channel][:item][:forecast][1][:text];

      #      puts @sunrise;
    end

  end
end

