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
# def triangle(a, b, c)
#   # WRITE THIS CODE
#   if a == b
#     if b == c
#       :equilateral
#     else
#       :isosceles
#     end
#   elsif a == c
#     :isosceles
#   elsif b == c
#     :isosceles
#   else
#     :scalene
#   end
# end

def triangle(a, b, c)
  array = [a, b, c].sort #first put them in order
  raise TriangleError if array.min <= 0 || array[0]+array[1] <= array[2] #this will help evaluate out negatives and non triangles
  array.uniq! #this will get rid of duplicates, mutates array
  array.length == 1 ? :equilateral: array.length == 2 ? :isosceles : :scalene #double ternary
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
