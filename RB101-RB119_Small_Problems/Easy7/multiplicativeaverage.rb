
def show_multiplicative_average(array)
  product = array.inject(:*)
  quotient = product / (array.size.to_f)
  sprintf('%.3f', quotient)
end

p show_multiplicative_average([3, 5])                # => The result is 7.500
p show_multiplicative_average([6])                   # => The result is 6.000
p show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667


def multiply_list(arr1, arr2)
  arr1.zip(arr2).map {|x| x.inject(:*)}
  # index = 0
  # result = []

  # loop do
  #   break if index >= arr1.size
  #   result << (arr1[index] * arr2[index])
  #   index += 1
  # end
  # result
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

def multiply_all_pairs(arr1, arr2)
  index = 0
  result = []

  loop do
    break if index >= arr2.size
    arr1.each do |num|
      product = num * arr2[index]
      result << product
    end
    index += 1
  end
  result.sort!
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) #== [2, 4, 4, 6, 8, 8, 12, 16]