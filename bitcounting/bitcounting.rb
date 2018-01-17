require 'pry-byebug'

class Number

  def initialize(num)
    @binary_max_numum = num
    @binary_array = []
    @binary_max_num = 1
  end

  def count_bits
    generate_highest_divider
    until @binary_max_numum == 0
      @binary_max_numum >= @binary_max_num ? adding_one_to_binary : adding_zero_to_binary
    end
    @binary_array.reduce(:+).nil? ? 0 : @binary_array.reduce(:+)
  end

  def adding_one_to_binary
    until @binary_max_numum < @binary_max_num
      @binary_array << 1
      @binary_max_numum -= @binary_max_num
    end
  end

  def adding_zero_to_binary
    @binary_max_num = @binary_max_num/2
    @binary_array << 0
  end

  def generate_highest_divider
    @binary_max_num = @binary_max_num * 2 while @binary_max_num*2 <= @binary_max_numum
  end


end

