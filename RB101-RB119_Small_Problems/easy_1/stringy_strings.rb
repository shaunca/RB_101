def stringy(size = 1)
  numbers = []
  
  size.times do |index|
    number = index.even? ? 1 : 0
    numbers << number
  end
  
  numbers.join
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

puts stringy()