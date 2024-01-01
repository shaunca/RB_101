=begin
Write a method named include? that takes an Array and a search value as arguments.
This method should return true if the search value is in the array, false if it is not.
You may not use the Array#include? method in your solution.

input = array and search value
output = boolean

implicit = any object
         blank == false
         integers
         arrays
explicit = 2 arguments
no use of include

DATA
arrays iterating or see if the search value is there or not

Algorithm
def include? takes 2 arguments array and search value
iterate through the array and look for the search value, return false if it doesn't exist and return true if it does

=end

def include?(array, value)
  array.find {|el| return true if el == value}
  return false
  # if value == nil
  #   return false if array == []
  #   return true if array.find {|el| el == value} == value
  # else
  #   return true if array.find {|el| el == value} == value
  #   return false if array.find {|el| el == value} == nil
  # end
end



p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false