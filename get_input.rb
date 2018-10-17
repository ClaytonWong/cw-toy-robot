def get_input()
  input = gets.upcase.strip # Read input from user, change it to upper case and remove spaces
  inputs = input.to_s.split(" ") # Split input up into pieces marked by spaces

  return inputs
end # End get_input definition