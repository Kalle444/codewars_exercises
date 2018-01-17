require 'minitest/autorun'
require_relative 'multi'



RESULT = [[1,2,3],[2,4,6],[3,6,9]]

describe "test that class MultiTable works" do

  let(:dimension_one) { MultiTable.new(3,3)}

  it "should output an array" do
    assert_equal Array, dimension_one.multiplication_table.class
  end

  it "should output the array [[1,2,3],[2,4,6],[3,6,9]] with input 3,3" do
    assert_equal RESULT, dimension_one.multiplication_table
  end

end
