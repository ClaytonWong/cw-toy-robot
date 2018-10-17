# The chk_safe_coords function checks if x and y
# coordinates given will place the toy robot onto
# a spot on the table
def chk_safe_coords(x, y)
  # If x or y is negative or greater than 4
  if x < 0 || x > 4 || y < 0 || y > 4
    return false # Return "unsafe"
  else
    return true  # Return "safe"
  end
end

def menu()
  system 'clear' # Clear Screen

  # Variable to see if a valid PLACE command had been given at the start, initialse it to false
  valid_place = false 

  # While no valid PLACE command is given first
  while valid_place == false
    # Ask for valid place command
    puts "Please enter starting location and facing for robot,"
    puts "format is: PLACE X,Y,F"
    puts "Where X and Y can be 0, 1, 2, 3, or 4"
    puts "and F can be NORTH, EAST, SOUTH, or WEST"
    puts "e.g. a valid first command is:"
    puts "PLACE 0,0,NORTH"

    input = gets.upcase.strip # Read input from user
    inputs = input.to_s.split(" ") # Split input up into pieces marked by spaces
    
    if inputs[0] == "PLACE" # If PLACE command given
      i = inputs[1].to_s.split(",") # Split second part of PLACE command marked by ','
      
      x = i[0].to_i # First part is x coordinate
      y = i[1].to_i # Second part is y coordinate
      f = i[2] # Third part is facing

      if chk_safe_coords(x, y)
        puts "safe placement"
      else
        puts "unsafe placement"
      end
      #puts x
      #puts y
      #puts f
      #puts x + 1
    end    
    
    valid_place = true
  end
  
  #loop do

  #end # End loop do for menu
end # End menu

menu()