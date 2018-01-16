require 'pry-byebug'


class FibNum

  def initialize(num)
    @num = num
    @n = 0
    @n1 = 1

  end

  def product_fib
    until @n * @n1 >= @num
      @n1 += @n
      @n = @n1 - @n
    end
    @n * @n1 == @num ? [@n, @n1, true] : [@n , @n1 , false]
  end
end
