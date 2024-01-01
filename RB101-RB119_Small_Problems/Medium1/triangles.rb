=begin
identify the triangle whether it is equilateral 3 sides equal
scalene 3 sides different
isosceles 2 sides are equal

determine the inputs if they are which triangle, if none fit then put invalid

use case methods and use an array

algorithm

initialize hash keys with number of sides as keys and symbols as values
initialize array and put all the numbers in there
sort the array and take out the unique variables
using the unique variables, count for duplicates
if duplicates exist, check if there are 2 or 3 duplicates
determine and return the triangle type

=end

def triangle(a, b, c)
  return :invalid if [a, b, c].include?(0)
  return :invalid if check_triangle(a, b, c) == false
  array = [a, b, c]
  triangle_type = { 3 => :equilateral, 2 => :isosceles, 1 => :scalene}
  count = 0

  array.each do |num|
    count = array.count(num) if count <= array.count(num)
  end
  triangle_type[count]
end

def check_triangle(a, b, c)
  arrange = [a, b, c].sort
  arrange[2] <= arrange[0] + arrange[1]
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid


=begin

check if triangle angles equal to 180
add all arguments and see if they equal to 180

check if arguments are more than 0
check each argument if argument is more than 0

return :acute less than 90
check for argument if they are all less than 90 by selecting them
:right  1 90
check for argument if only 1 is a 90

: obtuse one angle is greater than 90
check if only 1 angle is greater than 90



=end

def triangle(a, b, c)
  array = [a, b, c]
  return :invalid if array.inject(:+) != 180
  return :invalid if array.select {|x| x <= 0}.length >= 1

  case
  when array.select {|x| x == 90}.size == 1
    :right
  when array.select {|x| x < 90}.size == 3
    :acute
  when array.select {|x| x > 90}.size == 1
    :obtuse
  end
end


p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid