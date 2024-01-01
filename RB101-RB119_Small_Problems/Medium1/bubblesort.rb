
=begin

iterate through the given array
compare the current element with the next element
if next element is greater then remain
if next element is lesser, then swap places with the current element
repeat this process several times until all elements are lesser than the next element

how do we identify if all the elements are lesser than the next element?
we have to iterate it separately and check.

algorithm
iterate through the array using a mutating method
and then check if all elements are lesser than the next element
---by selecting elements that are greater than the next element
---and if none then return the array
---if there is, keep on iterating thru the array.
=end

# def bubble_sort!(array)
#   loop do
#     swapped = false
#     1.upto(array.size - 1) do |index|
#       next if array[index - 1] <= array[index]
#       array[index - 1], array[index] = array[index], array[index - 1]
#       swapped = true
#     end

#     break unless swapped
#   end
# end

def bubble_sort!(array)
  result = array
  while greater?(result).any? == true
    result = sort(result)
  end
  result
end

def greater?(array)
  array.select.with_index do |x, index|
    next if index == 0
    x < array[index - 1]
  end
end

def sort(array)
  array.each_with_index do |x, index|
    next if index == array.index(array.last)
    if x > array[index + 1]
      array[index], array[index + 1] = array[index + 1], array[index]
    elsif x < array[index + 1]
      x
    end
  end
end

# array = [5, 3]
# p bubble_sort!(array)
# p array == [3, 5]


# array = [6, 2, 7, 1, 4]
# p bubble_sort!(array)
# p array == [1, 2, 4, 6, 7]

# array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
# p bubble_sort!(array)
# p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

# def merge(arr1, arr2)
#   result = arr1 + arr2
#   bubble_sort!(result)
# end

# def merge(array1, array2)
#   index2 = 0
#   result = []

#   array1.each do |value|
#     while index2 < array2.size && array2[index2] <= value
#       result << array2[index2]
#       index2 += 1
#     end
#     result << value
#   end

#   result.concat(array2[index2..-1])
# end

# p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
# p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
# p merge([], [1, 4, 5]) == [1, 4, 5]
# p merge([1, 4, 5], []) == [1, 4, 5]

