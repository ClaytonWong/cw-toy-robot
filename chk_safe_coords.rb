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