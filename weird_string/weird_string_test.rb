require 'minitest/autorun'
require_relative 'weird_string'


describe "test class WeirdString" do

let(:wkstring) { WeirdString.new("String") }

  it "should return the string StRiNg" do
    assert_equal "StRiNg", wkstring.transform_string
  end

let(:wstring) { WeirdString.new("Weird string case") }

  it "should return the string WeIrD StRiNg CaSe " do
    assert_equal "WeIrD StRiNg CaSe", wstring.transform_string
  end

end
