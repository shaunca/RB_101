=begin
Write a method that combines two Arrays passed in as arguments,
and returns a new Array that contains all elements from both Array arguments, with the elements taken in alternation.
You may assume that both input Arrays are non-empty, and that they have the same number of elements.

input 2 arrays
output an array combining 2 arguments and elements put one after the other.

explicit = the size of arrays are the same
          non empty arrays
implicit = assume different elements
        arrays

DATA
arrays

ALGORITHM
define intereave takes 2 arguments
initialize result assign to a blank array
counter = 0
initialize var index to 0

loop do
push 0 element from first array to result
push 0 element from second array to result
add 1 to counter for each loop
add 1 to index for each loop
break the loop if the size of array has been reached.

return a new array with interwoven elements from the two arrays
=end

def interleave(arr1, arr2)
  result = []
  index = 0
  counter = 0

  loop do
    result << arr1[index]
    result << arr2[index]

    counter += 1
    index += 1
    break if index == arr1.size
  end
  return result
end

# def interleave(arr1, arr2)
#   arr1.zip(arr2).flatten
# end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']