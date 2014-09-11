class Fizzd

  def initialize(num_1, num_2)
    @range = (num_1..num_2)
  end

  def fizzbuzz
    @range.each do |num|
      if num % 3 == 0 && num % 5 == 0
        puts 'FizzBuzz'
      elsif num % 3 == 0 && num % 5 != 0
        puts 'Fizz'
      elsif num % 5 == 0 && num % 3 != 0
        puts 'Buzz'
      else
        puts num
      end
    end
  end
end

