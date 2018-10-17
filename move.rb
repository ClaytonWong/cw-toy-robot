require_relative "place_direction" # Import place_direction class

def move(current_place_and_direction)
  # Create place_and_direction object and initialize it's
  # x and y coordinates to what you have in 
  # current_place_and_direction
  place_and_direction = Place_direction.new
  place_and_direction.x = current_place_and_direction.x
  place_and_direction.y = current_place_and_direction.y

  case current_place_and_direction.f # Check current facing
  when "NORTH"
    # Change y coordinate of place
    place_and_direction.y = place_and_direction.y + 1
  when "EAST"
    # Change x coordinate of place
    place_and_direction.x = place_and_direction.x + 1
  when "SOUTH"
    # Change y coordinate of place
    place_and_direction.y = place_and_direction.y - 1
  else # current facing is WEST
    # Change x coordinate of place
    place_and_direction.x = place_and_direction.x - 1
  end # End case

  return place_and_direction
end # End of move function definintion