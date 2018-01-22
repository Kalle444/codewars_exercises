require 'pry-byebug'


class NumAccumelator

  def initialize(numbers)
    @numbers = numbers
  end


  def acc_positive_numbers
    sum = 0
    @numbers.each { |num| sum += num if num > 0 }
    sum
  end

end

