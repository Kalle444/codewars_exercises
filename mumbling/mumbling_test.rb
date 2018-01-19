require 'minitest/autorun'
require_relative 'mumbling'


describe "testing the class Accumulator" do
  let(:string_one) { Accumulator.new("abcd")}

  describe "testing with lowercase" do
    it "should return string = A-Bb-Ccc-Dddd " do
      assert_equal "A-Bb-Ccc-Dddd", string_one.character_accumulator
    end
  end

  describe "testing with a combination of lower and uppercases" do
    let(:string_two) { Accumulator.new("RqaEzty")}

    it "should return string = R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy" do
      assert_equal "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy", string_two.character_accumulator
    end
  end
end

