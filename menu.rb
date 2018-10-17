# Import functions needed
require_relative "get_input"
require_relative "chk_safe_coords"
require_relative "turn_left"
require_relative "turn_right"
require_relative "move"

# Import classes needed
require_relative "command"
require_relative "place_direction"

def menu()
  system 'clear' # Clear Screen

  # Create new objects for my_command, current_place_and_direction, and next_place_and_direction
  my_command = Command.new
  current_place_and_direction = Place_direction.new
  next_place_and_direction = Place_direction.new

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

    inputs = get_input() # Get input from user
    my_command.action = inputs[0] # Get action part of input
    
    if my_command.action == "PLACE" # If PLACE command given
      x_y_f = inputs[1].to_s.split(",") # Split second part of PLACE command marked by ','
      
      my_command.x = x_y_f[0].to_i # First part is x coordinate
      my_command.y = x_y_f[1].to_i # Second part is y coordinate
      my_command.f = x_y_f[2] # Third part is facing

      if chk_safe_coords(my_command.x, my_command.y)
        valid_place = true
        puts "safe placement"

        # You have put the robot onto a safe place so
        # initialize current place and direction with 
        # x and y coordinates and facing given at input
        
        current_place_and_direction.x = my_command.x
        current_place_and_direction.y = my_command.y
        current_place_and_direction.f = my_command.f
      else
        puts "unsafe placement"
      end # end if chk_safe_coords(x, y)
    end # end If PLACE command given   
  end # End while loop for valid PLACE command
  
  loop do
    inputs = get_input() # Get input from user
    my_command.action = inputs[0] # Get action part of input

    case my_command.action
      when "PLACE"
        x_y_f = inputs[1].to_s.split(",") # Split second part of PLACE command marked by ','
      
        my_command.x = x_y_f[0].to_i # First part is x coordinate
        my_command.y = x_y_f[1].to_i # Second part is y coordinate
        my_command.f = x_y_f[2] # Third part is facing

        if chk_safe_coords(my_command.x, my_command.y)
          puts "safe placement"

          # You have put the robot onto a safe place so
          # update current place and direction with 
          # x and y coordinates and facing given at input

          current_place_and_direction.x = my_command.x
          current_place_and_direction.y = my_command.y
          current_place_and_direction.f = my_command.f
        else
          puts "unsafe placement"
        end # end if chk_safe_coords(x, y)
      when "LEFT"
        # Update current facing
        current_place_and_direction.f = turn_left(current_place_and_direction.f)
      when "RIGHT"
        # Update current facing
        current_place_and_direction.f = turn_right(current_place_and_direction.f)
      when "MOVE"
        
        next_place_and_direction = move(current_place_and_direction)

        if chk_safe_coords(next_place_and_direction.x, next_place_and_direction.y)
          puts "safe move"

          # You have moved the robot to a safe place so
          # update current place with new
          # x and y coordinates 

          current_place_and_direction.x = next_place_and_direction.x
          current_place_and_direction.y = next_place_and_direction.y
        else
          puts "unsafe move"
        end # end if chk_safe_coords(x, y)
      when "REPORT"
        print "#{current_place_and_direction.x},"
        print "#{current_place_and_direction.y},"
        print "#{current_place_and_direction.f}"
        puts  ""
      else
        puts "INVALID INPUT GIVEN!"
    end # End case
  end # End loop do for menu
end # End menu

menu()