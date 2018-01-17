require 'minitest/autorun'
require_relative 'bitcounting'



describe "Test the class number" do

  let(:number_one) { Number.new(0) }

  it "should return 0 when input it 0" do
    assert_equal 0, number_one.count_bits
  end

  let(:number_two) { Number.new(4) }

  it "should return 1 when input it 4" do
    assert_equal 1, number_two.count_bits
  end

  let(:number_three) { Number.new(7) }

  it "should return 3 when input it 7" do
    assert_equal 3, number_three.count_bits
  end

  let(:number_four) { Number.new(9) }

  it "should return 2 when input it 9" do
    assert_equal 2, number_four.count_bits
  end

  let(:number_five) { Number.new(10) }

  it "should return 2 when input it 10" do
    assert_equal 2, number_five.count_bits
  end

  let(:number_six) { Number.new(77231163) }

  it "should return 14 when input it 77231163" do
    assert_equal 14, number_six.count_bits
  end

  let(:number_seven) { Number.new(392902058) }

  it "should return 17 when input it 392902058" do
    assert_equal 17, number_seven.count_bits
  end

end



