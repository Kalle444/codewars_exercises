require 'minitest/autorun'
require_relative 'direction_reduction'

A = ["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"]
U = ["NORTH", "WEST", "SOUTH", "EAST"]



describe "test the class Direction" do

  let(:dir_u) { Direction.new(U)}

  it "should result in [NORTH, WEST, SOUTH, EAST]" do
    assert_equal ["NORTH", "WEST", "SOUTH", "EAST"], dir_u.dir_reduc
  end

  let(:dir_a) { Direction.new(A)}

  it "should result in ['WEST']" do
    assert_equal ["WEST"], dir_a.dir_reduc
  end

end
