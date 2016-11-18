#!/usr/bin/env ruby

require_relative 'times'
require_relative 'booking'

#This refers exclusively to the command line input
input = ARGV[0]
input_int = ARGV[0].to_i


#Takes the user input and checks whether it is between 8:00 + 15:00
def check_times(input, input_int)
  if input_int < 8
    puts "You must book after 08:00"
  elsif input_int > 15
    puts "You must book before 15:00"
  else
    times = Times.new.parsing_file
    booking = Booking.new.book_slot(input, times)
  end
end

check_times(input, input_int)
