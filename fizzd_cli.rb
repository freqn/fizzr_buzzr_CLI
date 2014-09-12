require './lib/fizzd'

def greet
  spc
  puts "Welcome to Fizzd, an interactive implementation of 'FizzBuzz'."
  puts <<STRING

  It works something like this for a user-defined range:

    1) It returns 'Fizz' for any number divisible by 3 but not 5.
    2) It returns 'Buzz' for any number divisible by 5 but not 3.
    3) It returns 'FizzBuzz' for any number divisible by both 3 & 5.
    4) It returns the actual number for everything else.

STRING
  main
end

def main
  puts "Now enter the lowest number of your desired range:"
  spc
  n1 = gets.chomp.to_i
  spc
  puts "Enter your highest number:"
  spc
  n2 = gets.chomp.to_i
  spc
  Fizzd.new(n1,n2).fizzbuzz
  spc
  recur
end

def recur
  puts 'Would you like to define another range, Y/N?'
  spc
  selection = gets.chomp.capitalize
  if selection == 'Y'
    spc
    main
  elsif selection == "N"
    spc
    puts "Ok then. See you next time!"
    spc
  else
    spc
    puts "Please make a valid selection."
    spc
    recur
  end
end

def spc
  puts "\n"
end

greet
