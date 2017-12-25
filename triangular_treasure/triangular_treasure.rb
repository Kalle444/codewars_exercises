require 'pry-byebug'


# Return the nth triangular number
def triangular( n )
  sum = 0
  (1..n).each { |num| sum += num }
  sum
end


