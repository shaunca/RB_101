def is_odd?(x)
  if x.odd?
    "true"
  else
    "false"
  end
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

#solution
def is_odd?(number)
  number % 2 == 1
end