require 'minitest/autorun'
require_relative 'children'


describe "testing the class FindChildren" do

  describe "test when string contains uppercase and lowecase letters only" do
    let(:find_children_one) { FindChildren.new("aBAbbCac") }

    it "should return AaaBbbCc" do
      assert_equal "AaaBbbCc", find_children_one.finding_children
    end
  end

  describe "test when string contains uppercase, lowecase and not letter character" do
    let(:find_children_two) { FindChildren.new("aaAcC?c") }

    it "should return AaaCcc" do
      assert_equal "AaaCcc", find_children_two.finding_children
    end
  end

  describe "test when string is empty" do
    let(:find_children_three) { FindChildren.new("") }

    it "should return AaaCcc" do
      assert_equal "", find_children_three.finding_children
    end
  end

end

