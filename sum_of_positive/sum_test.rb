require 'minitest/autorun'
require_relative 'sum'


describe "test the class NumAccumelator" do

  describe "test acc_positive_numbers with only positive numbers in array" do
    let(:case_one) { NumAccumelator.new([1, 4, 6, 7]) }

    it "the method should return fixnum 18" do
      assert_equal 18, case_one.acc_positive_numbers
    end
  end

  describe "test acc_positive_numbers with combination of positive and negative numbers in array" do
    let(:case_two) { NumAccumelator.new([1, 4, -4, 6, -1, 7]) }

    it "the method should return fixnum 18" do
      assert_equal 18, case_two.acc_positive_numbers
    end
  end

  describe "test acc_positive_numbers with no numbers" do
    let(:case_three) { NumAccumelator.new([]) }

    it "the method should return fixnum 0 " do
      assert_equal 0, case_three.acc_positive_numbers
    end
  end

  describe "test acc_positive_numbers with negative numbers" do
    let(:case_four) { NumAccumelator.new([-1, -4, -7, -4]) }

    it "the method should return fixnum 0" do
      assert_equal 0, case_four.acc_positive_numbers
    end
  end

end
