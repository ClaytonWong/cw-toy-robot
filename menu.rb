require_relative "chk_safe_coords"
require_relative "command"
require_relative "get_input"

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

    #input = gets.upcase.strip # Read input from user
    #inputs = input.to_s.split(" ") # Split input up into pieces marked by spaces
    inputs = get_input()
    
    my_command = Command.new
    my_command.action = inputs[0]
    
    if my_command.action == "PLACE" # If PLACE command given
      i = inputs[1].to_s.split(",") # Split second part of PLACE command marked by ','
      
      my_command.x = i[0].to_i # First part is x coordinate
      my_command.y = i[1].to_i # Second part is y coordinate
      my_command.f = i[2] # Third part is facing

      if chk_safe_coords(my_command.x, my_command.y)
        valid_place = true
        puts "safe placement"
      else
        puts "unsafe placement"
      end # end if chk_safe_coords(x, y)
    end # end If PLACE command given   
  end # End while loop for valid PLACE command
  
  loop do
    #input = gets.upcase.strip # Read input from user
    #inputs = input.to_s.split(" ") # Split input up into pieces marked by spaces
    inputs = get_input()

    case inputs[0]
      when "PLACE"
        puts "place"
      when "LEFT"
        puts "left"
      when "RIGHT"
        puts "right"
      when "MOVE"
        puts "move"
      when "REPORT"
        puts "report"
      else
        puts "INVALID INPUT GIVEN!"
    end # End case
  end # End loop do for menu
end # End menu

menu()