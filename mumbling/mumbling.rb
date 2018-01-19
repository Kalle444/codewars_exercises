require 'pry-byebug'


class Accumulator

  def initialize(string)
    @string = string
  end

  def character_accumulator
    @string.chars.map.with_index.map { |char, ind| "#{(char * (ind + 1)).capitalize}" }.join("-")
  end
end
