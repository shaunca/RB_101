# def sum_of_sums(array)
#   result = []

#   array.each_with_index do |num, index|
#     result << array[0..index].inject(:+)
#   end

#   result.inject(:+)
# end

def sum_of_sums(numbers)
  sum_total = 0
  accumulator = 0

  numbers.each do |num|
    accumulator += num # v = 3 + 5
    sum_total += accumulator # s = 3 + 8
  end

  sum_total
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35