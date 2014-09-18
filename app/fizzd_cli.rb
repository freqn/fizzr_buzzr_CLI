require '../lib/fizzd'
require '../lib/mailer'

class Fizz_em
  def greet
    system('clear')
    spc
    puts "Welcome to Fizzd, a user-defined implementation of 'FizzBuzz'."
    spc
    puts "It works for any range and returns the following:\n
        1) 'Fizz' for any number divisible by 3 but not 5.
        2) 'Buzz' for any number divisible by 5 but not 3.
        3) 'FizzBuzz' for any number divisible by both 3 & 5.
        4) The actual number for everything else.\n\n"
    main
  end

  def main
    puts "Type the lowest number of your desired range:"
    spc
    n1 = gets.chomp.to_i
    spc
    puts "Type your highest number:"
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
      puts "Your PDF has been successfully generated. Would you like to send it to somebody, Y/N?"
      spc
      email = gets.chomp.capitalize
      case email
      when 'Y'
        spc
        address_prompt
        mailer
      end
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

  def address_prompt
    puts "Enter an email address"
    spc
    @email = gets.chomp
    spc
    puts "Generating and sending email.."
    sleep(1)
    spc
    puts "Sent successfully"
  end

  def mailer
    Mailer.new(@email)
  end

  def spc
    puts "\n"
  end
end

Fizz_em.new.greet
