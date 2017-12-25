require 'minitest/autorun'
require 'pry-byebug'
require_relative 'split_strings'

describe "test the method" do
  it "should return an Array" do
    assert_equal Array, solution('abc').class
  end

  it "'abc' should return ['ab', 'c_']" do
    assert_equal ['ab', 'c_'], solution('abc')
  end

  it "'abcdef' should return ['ab', 'cd', 'ef']" do
    assert_equal ['ab', 'cd', 'ef'], solution('abcdef')
  end
end
