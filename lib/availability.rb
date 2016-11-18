#!/usr/bin/env ruby

require_relative 'times'

#This refers exclusively to the command line input
input = ARGV[0].to_i



#Takes the user input and checks whether it is between 8:00 + 15:00
def check_times(input)
  if input < 8
    puts "You must book after 08:00"
  elsif input > 15
    puts "You must book before 15:00"
  else
    times = Times.new.parsing_file
  end
  puts times
end

check_times(input)
