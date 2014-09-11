require './lib/fizzd'

def main
  puts 'Welcome to Fizzd'
  puts "Let's define a range. Enter your first number"
  spc
  n1 = gets.chomp.to_i
  spc
  puts "Enter your second number"
  spc
  n2 = gets.chomp.to_i
  Fizzd.new(n1,n2).fizzbuzz
  spc
  main
end

def spc
  puts "\n"
end

main
