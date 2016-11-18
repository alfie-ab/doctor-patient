#!/usr/bin/env ruby

require 'json'
require 'time'

#This refers exclusively to the command line input
input = ARGV[0].to_i

# This is taking the JSON file and parsing it to be used in ruby
def parsing_file
  file = File.read('../times.json')
  availability = JSON.parse(file)
end


#Takes the user input and checks whether it is between 8:00 + 15:00
def check_times(input)
  if input < 8
    puts "You must book after 08:00"
  elsif input > 15
    puts "You must book before 15:00"
  else
    puts "You booking has been confirmed"
  end
end

#Takes json file and sends back just the times
def get_times(availability)
  output = []
    availability["availability_slots"].each do |a|
      output << a["time"]
    end
  output
end

#Takes user input and checks it against available times
def check_availability
  get_times
end
