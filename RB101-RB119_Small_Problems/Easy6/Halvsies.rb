=begin
Write a method that takes an Array as an argument, and returns two Arrays (as a pair of nested Arrays)
that contain the first half and second half of the original Array, respectively.
If the original array contains an odd number of elements,
the middle element should be placed in the first half Array.

input = 1 array
output = a nested array with two sub arrays, each containing the first and second half of the original array

implicit = integers only? any object
          mutating?
          blank arrays will return a nested array with 2 blank arrays
          and if only one element, returns a nested array with 2 sub arrays 1 withg the element and a blank one
explicit = odd number of elements, the middle element should be placed in the first array


DATA
arrays

Algorithm
def halvsies method takes 2 arguments
initialize result variable = an array
divide index size by 2 and assign the quotient to var index a
0 to quotient, elements with this index is going to be pushed to var list_a
list_a is pushed to result

quotient + 1 is going to be assigned to index b
from quotient + 1 to the last index of the original array, push elements to list be

push list a and b to result
result

=end

def halvsies(array)
  result = [[], []]
  if array.size % 2 == 0
    index_a = array.size / 2 - 1
  else
    index_a = array.size / 2
  end

  array.each_with_index do |el, index|
    if index <= index_a
      result[0] << el
    else
      result [1] << el
    end
  end
  result
end


p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]