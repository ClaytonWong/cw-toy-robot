# Function to turn right, takes
# current facing and returns
# a new one. Value of current
# facing determines value
# of new one
def turn_right(current_facing)
  new_facing = ""

  case current_facing
    when "NORTH"
      new_facing = "EAST"
    when "EAST"
      new_facing = "SOUTH"
    when "SOUTH"
      new_facing = "WEST"
    else # current facing is WEST
      new_facing = "NORTH"
  end # End case

  return new_facing
end # End of turn right function