def get_input()
  input = gets.upcase.strip # Read input from user
  inputs = input.to_s.split(" ") # Split input up into pieces marked by spaces

  return inputs
end # End get_input definition