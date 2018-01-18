require 'pry-byebug'

Opposite = {NORTH: "SOUTH", SOUTH: "NORTH", EAST: "WEST", WEST: "EAST"}

class Direction

  def initialize(direction)
    @dir = direction
  end


  def dir_reduc
    ind = 0
    until ind == @dir.count - 1 || @dir[ind].nil?
      if Opposite[@dir[ind].to_sym] == @dir[ind + 1]
        @dir.slice!(ind..ind+1)
        ind = 0
      else
        ind += 1
      end
    end
    @dir
  end

end


