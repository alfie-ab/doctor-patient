require 'json'

class Times

  attr_reader :output

  def initialize
    @output = []
  end

  def parsing_file
    file = File.read('../times.json')
    availability = JSON.parse(file)
    get_times(availability)
  end

  # private

  def get_times(availability)
    availability["availability_slots"].each do |a|
      @output << a["time"]
    end
  end

end
