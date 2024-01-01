def rotate_array(array)
  new_arr = array.select {|_| _}

  removed = new_arr.shift
  new_arr.push(removed)
  new_arr
end


p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

p x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true

# it takes the index from the right, and moves the number from that index to the last index.
def rotate_rightmost_digits(num, index)
  array = num.to_s.chars
  new_index = -(index)

  selected_num = array.delete_at(new_index)
  array.push(selected_num)
  array.join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917

def max_rotation(num)
  new_num = num
  array = num.to_s.chars
  index = array.size

  loop do
    break if index == 1
    new_num = rotate_last_digit(new_num, index)
    index -= 1
  end
  new_num
end

def rotate_last_digit(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_arr(all_digits[-n..-1])
  all_digits.join.to_i
end

def rotate_arr(array)
  array[1..-1] + [array[0]]
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845