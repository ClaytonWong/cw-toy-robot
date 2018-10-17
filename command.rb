class Command
  attr_accessor :action, :x, :y, :f
    # action can be PLACE, LEFT, RIGHT, MOVE OR REPORT
    # x is x coordinate
    # y is y coordinate
    # f is facing, ie NORTH, EAST, SOUTH, or WEST
    
    #def initialize(command)
    #   @action = command[:action]
    #   @x = command[:x]
    #   @y = command[:y]
    #   @f = command[:f]
    #end
    
end # end class command