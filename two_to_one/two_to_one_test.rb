require 'minitest/autorun'
require 'pry-byebug'
require_relative 'two_to_one'


A = "xyaabbbccccdefww"
B = "xxxxyyyyabklmopq"
C = "abcdefghijklmnopqrstuvwxyz"


describe "test the method combining and sorting two string" do

  it "should work with first exercsice" do
    assert_equal "abcdefklmopqwxy", longest(A, B)
  end

  it "should work with first exercsice" do
    assert_equal "abcdefghijklmnopqrstuvwxyz", longest(C, C)
  end

end
