# Function to turn left, takes
# current facing and returns
# a new one. Value of current
# facing determines value
# of new one
def turn_left(current_facing)
  new_facing = ""

  case current_facing
    when "NORTH"
      new_facing = "WEST"
    when "EAST"
      new_facing = "NORTH"
    when "SOUTH"
      new_facing = "EAST"
    else # current facing is WEST
      new_facing = "SOUTH"
  end # End case

  return new_facing
end # End of turn left function