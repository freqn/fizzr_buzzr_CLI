require '../lib/fizzd'

def greet
  system('clear')
  spc
  puts "Welcome to Fizzd, a user-defined implementation of 'FizzBuzz'."
  puts <<STRING

  It works for any range and returns the following:

    1) 'Fizz' for any number divisible by 3 but not 5.
    2) 'Buzz' for any number divisible by 5 but not 3.
    3) 'FizzBuzz' for any number divisible by both 3 & 5.
    4) The actual number for everything else.

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
  puts "Would you like to generate a PDF with your results, Y/N?"
  spc
  prawn = gets.chomp.capitalize
  spc
  if prawn == "Y"
    Fizzd.new(n1,n2).fizzbuzz(prawn)
    spc
    puts "Your PDF has been successfully generated"
  else
    Fizzd.new(n1,n2).fizzbuzz(prawn)
  end
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
    sleep(1)
    system('clear')
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
