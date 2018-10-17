class Command
  # action can be PLACE, LEFT, RIGHT, MOVE or REPORT
  # x is x coordinate
  # y is y coordinate
  # f is facing, ie NORTH, EAST, SOUTH, or WEST
    
  attr_accessor :action, :x, :y, :f
end # end class command