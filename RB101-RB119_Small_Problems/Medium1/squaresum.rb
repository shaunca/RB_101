def sum_square_difference(num)
  summation_square = ((1..num).to_a.inject(:+))** 2
  square_sum = (1..num).to_a.map {|x| x ** 2}.inject(:+)
  summation_square - square_sum
end



p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150