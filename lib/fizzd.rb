class Fizzd
  def initialize(num_1, num_2)
    @range = (num_1..num_2)
    @result_set = []
  end

  def fizzbuzz
    @range.each do |num|
      if num % 3 == 0 && num % 5 == 0
        @result_set << 'FizzBuzz'
      elsif num % 3 == 0 && num % 5 != 0
        @result_set << 'Fizz'
      elsif num % 5 == 0 && num % 3 != 0
        @result_set << 'Buzz'
      else
        @result_set << num.to_s
      end
    end
    @result_set.each do |result|
        puts result
    end
  end

  def result_set(num)
    @result_set[num]
  end
end

