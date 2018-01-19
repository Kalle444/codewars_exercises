require 'minitest/autorun'
require_relative 'shell_game'


describe "testing the class ShellGame" do
  let(:shell_game) { ShellGame.new(0, [[0, 1], [1, 2], [1, 0]]) }

  describe "testing that expected outcome is an Fixnum" do
    it "should return a Fixnum" do
      assert_equal Integer, shell_game.find_ball_location.class
    end
  end

  describe "testing that method find_ball_location returns correct location" do
    it "should return 2 " do
      assert_equal 2, shell_game.find_ball_location
    end
  end
end




