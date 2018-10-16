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

    valid_place = true
  end
  
  #loop do

  #end # End loop do for menu
end # End menu

menu()