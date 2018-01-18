require 'minitest/autorun'
require_relative 'going_cinema'


describe "test the class MovieDeal" do
  let(:deal_one) { MovieDeal.new(500, 15, 0.9)}

  it "should return an integer" do
    assert_equal Integer, deal_one.movie.class
  end

  it "should return 43 times" do
    assert_equal 43, deal_one.movie
  end

  let(:deal_two) { MovieDeal.new(100, 10, 0.95)}

  it "should return 24 times" do
    assert_equal 24, deal_two.movie
  end

end

