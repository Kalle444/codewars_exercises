require 'pry-byebug'


class WeirdString

  def initialize(string)
    @string = string
  end

  def transform_string
    @string.split(/\b/).map do |word|
      word.chars.each_with_index.map { |letter, index| index.even? ? letter.upcase : letter.downcase }.join
    end.join
  end
end
