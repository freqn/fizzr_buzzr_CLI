require 'rspec'
require 'fizzd'

describe Fizzd do 
  it "prints 'FizzBuzz' when a number is divisible by 3 & 5 " do 
    test = Fizzd.new(1,15)
    test.fizzbuzz
    test.result_set(14).should eq 'FizzBuzz' 
  end

  it "prints 'Fizz' when a number is divisible by 3 but not 5 " do 
    test = Fizzd.new(1,15)
    test.fizzbuzz
    test.result_set(2).should eq 'Fizz' 
  end

  it "prints 'Buzz' when a number is divisible by 5 but not 3 " do 
    test = Fizzd.new(1,15)
    test.fizzbuzz
    test.result_set(4).should eq 'Buzz' 
  end

  it "prints a number when a number is not divisible by 3 or 5 " do 
    test = Fizzd.new(1,15)
    test.fizzbuzz
    test.result_set(1).should eq '2' 
  end
end