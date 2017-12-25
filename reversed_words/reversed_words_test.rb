require 'minitest/autorun'
require 'pry-byebug'
require_relative 'reversed_words'


SENTENCE = "The greatest victory is that which requires no battle"
ANSWER = "battle no requires which that is victory greatest The"

describe "test the method" do
  it "should reverse the words in the sentence" do
    assert_equal ANSWER, solution(SENTENCE)
  end

end

