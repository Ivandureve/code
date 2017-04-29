# interface.rb
# Pseudo-code (what are the steps in plain english):
# 1. Say hello to the user
require_relative "calculator"
puts "Hello user!"
while true
  puts "Enter a first number:"
  first_number = gets.chomp.to_i
  puts "Enter a second one:"
  second_number = gets.chomp.to_i
  puts "Which operation [+][-][x][/]"
  operator = gets.chomp
    p calculate(first_number, second_number, operator)
end
