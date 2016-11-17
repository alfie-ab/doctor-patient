#!/usr/bin/env ruby

require 'json'

file = File.read('../times.json')
json = JSON.parse(file)

case ARGV[0]
when "12:40"
  puts "You have been booked in for 12:40"
  puts json
else
  puts "That time is not available"
end
