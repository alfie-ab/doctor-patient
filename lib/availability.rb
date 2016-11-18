#!/usr/bin/env ruby

require 'time'
require 'times'

#This refers exclusively to the command line input
input = ARGV[0].to_i



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


#Takes user input and checks it against available times
def check_availability
  get_times
end
