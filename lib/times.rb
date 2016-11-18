#Understands how to get a list of times

require 'json'

class Times

  def initialize
    @output = []
  end

  def parsing_file
    file = File.read('../times.json')
    availability = JSON.parse(file)
    get_times(availability)
  end

  def get_times(availability)
    availability["availability_slots"].each do |a|
      @output << a["time"]
    end
    @output
  end

end
