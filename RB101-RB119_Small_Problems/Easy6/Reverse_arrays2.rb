=begin
Write a method that takes an Array as an argument, and reverses its elements in place; that is,
mutate the Array passed into this method. The return value should be the same Array object.

You may not use Array#reverse or Array#reverse!.


P
input = array
output = reverse order of the original array

explicit rules = may not use reverse methods
                return value should be the same Array object (mutating)
implicit rules = blank array returns a blank array
                object in elements does not matter, only the order

D
arrays

A
def reverse!(list)
initialize result array with the same amount of elements as the given list
iterate through list and assign the first element to the last index of result until all indexes are filled
return result


=end

def reverse(list)
  result = (0..(list.size - 1)).to_a
  counter = result.size - 1

  list.each do |el|
    result[counter] = el
    counter -= 1
  end
  result
end

p reverse([1,2,3,4])
p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true