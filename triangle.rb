# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  raise TriangleError, "Length of all sides in a triangle should be greater than 0" if a <= 0 || b <= 0 || c <= 0
  x, y, z = [a, b, c].sort
  raise TriangleError, "Length of the longest side should be smaller than the length of the other two" if x + y <= z
  if a == b
    if b == c
      :equilateral
    else
      :isosceles
    end
  elsif b == c
    :isosceles
  elsif a == c
    :isosceles
  else
    :scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
