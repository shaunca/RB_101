=begin
Given an unordered array and the information that exactly one value in the array occurs twice (every other value occurs exactly once),
how would you determine which value occurs twice? Write a method that will find and return the duplicate value that is known to be in the array.

input = unordered array
output = value that is a duplicate

implicit = integers?
explicit = exactly one value that has a duplicate

DATA
arrays

Algorithm
def find_dup method takes one argument
initialize var new_arr to a blank array
initialize duplicate to nil or blank
iterate through the argument array and push elements to the new array
before pushing, check if the element already exists in the new array
and if not, push the element
if true, reassign var duplicate to that value
return duplicate
=end



def find_dup(array)
  new_arr = [:num]
  duplicate = nil

  array.each do |el|
    if new_arr.include?(el)
      duplicate = el
    else
      new_arr << el
    end
  end
  duplicate
end

p find_dup([1, 5, 3, 1]) == 1
p find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
          38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
          14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
          78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
          89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
          41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
          55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
          85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
          40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
          7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73