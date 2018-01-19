require 'pry-byebug'


class ShellGame

  def initialize(start, moves)
    @start = start
    @moves = moves
  end

  def find_ball_location
  ball_location = @start
  @moves.each do |sequence|
    if sequence.include? ball_location
      ball_location =  ball_location == sequence.first ? sequence.last : sequence.first
    end
  end
  ball_location
  end

end


