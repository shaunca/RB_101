def calculate_bonus(number, boolean)
  if boolean == true
    number.to_f / 2 
  else 
    0
  end
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

#solution
def calculate_bnus(salary, bonus)
  bonus ? (salary / 2) : 0
end