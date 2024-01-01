=begin
Write a method that takes two Arrays as arguments, and
returns an Array that contains all of the values from the argument Arrays.
There should be no duplication of values in the returned Array,
even if there are duplicates in the original Arrays.

input = 2 arrays
output = array with the two arrays combined, no duplicates

implicit = no mutations
          any object
          sorted?
explicit = no duplicates, one array

data
array

algorithm
def merge(list1, list2)
initialize blank array, result
iterate through both lists and push every element to the result array
filter out duplicates on the result array, sort it, and return it

=end

def merge(list1, list2)
  result = []

  list1.each {|el| result << el}
  list2.each {|el| result << el}

  result.sort!.uniq!
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]