#!/usr/bin/env ruby

require 'json'
require 'time'

# This is taking the JSON file and parsing it to be used in ruby
file = File.read('../times.json')
times = JSON.parse(file)

#This is separate and refers exclusively to the command line input
input = ARGV[0].to_i

if input < 8
  puts "You must book after 08:00"
elsif input > 15
  puts "You must book before 15:00"
else
  puts "You booking has been confirmed"
end
