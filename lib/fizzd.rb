require 'prawn'

class Fizzd
  def initialize(num_1, num_2)
    @range = (num_1..num_2)
    @result_set = []
    @res_list  = []
  end

  def fizzbuzz(type)
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
      @res_list << result
    end
    body_text = @res_list.join("\n")
    if type == "Y"
      count_total = @result_set.length
      Prawn::Document.generate("../export/Fizzd.pdf") do 
        fill_color "00ff00"
        stroke_color "0000ff"
        font_size(80) do
          text body_text, align: :center
        end
      end
    end
  end
end




