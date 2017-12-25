require 'minitest/autorun'
require 'pry-byebug'
require_relative 'triangular_treasure'

describe "testing the traingular method" do

  it "should return 0 if given triangular( 0 ) " do
    assert_equal 0, triangular(0)
  end

  it "should return 3 if given triangular( 2 ) " do
    assert_equal 3, triangular(2)
  end

  it "should return 6 if given triangular( 3 ) " do
    assert_equal 6, triangular(3)
  end

  it "should return 0 if given triangular( 0 ) " do
    assert_equal 0, triangular(-10)
  end
end

