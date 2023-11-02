def square_sum(numbers)
  numbers.sum {|x| x * x }
end

p square_sum([])