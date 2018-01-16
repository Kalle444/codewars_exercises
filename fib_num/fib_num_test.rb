require 'minitest/autorun'
require_relative 'fib_num'


describe "Test the class FibNum" do
  let(:fibnumber_one) { FibNum.new (714)}

  it "should return an array" do
    assert_equal Array, fibnumber_one.product_fib.class
  end

  it "should return [21, 34, true]" do
    assert_equal [21, 34, true] , fibnumber_one.product_fib
  end

  let(:fibnumber_two) { FibNum.new (800)}

  it "should return [34, 55, false]" do
    assert_equal [34, 55, false] , fibnumber_two.product_fib
  end

end









# productFib(714) # should return [21, 34, true],
#                 # since F(8) = 21, F(9) = 34 and 714 = 21 * 34

# productFib(800) # should return [34, 55, false],
#                 # since F(8) = 21, F(9) = 34, F(10) = 55 and 21 * 34 < 800 < 34 * 55
