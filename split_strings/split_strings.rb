require 'pry-byebug'

def solution(str)
  str.chars.each_slice(2).map do |char|
    char.size == 2 ? char.join : (char << "_").join
  end
end
