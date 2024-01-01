=begin
A featured number (something unique to this exercise) is an odd number that is a multiple of 7,
and whose digits occur exactly once each. So, for example, 49 is a featured number, but 98 is not (it is not odd),
97 is not (it is not a multiple of 7), and 133 is not (the digit 3 appears twice).

Write a method that takes a single integer as an argument, and returns the next featured number
that is greater than the argument. Return an error message if there is no next featured number.

input integer
output integer that is multiple of seven, but digit in number must occur only once.

arrays and integers

how to look for the next odd number that is a multiple of seven
use the argument as a base and use modulo to solve for the remainder
subtract the remainder and start adding seven from there
check if the multiple of seven is odd and verify if the digit occurs once
how to verify if digit occurs only once in number
convert number to array and count each number, if any number count is 2 then next
end
=end

def featured(num)
  base = num - (num % 7)

  until base > num && base.digits.uniq.size == base.digits.size && base.odd?
    base += 7
  end
  base
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

# p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements