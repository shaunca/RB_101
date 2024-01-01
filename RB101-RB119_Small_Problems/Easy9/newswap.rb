def swap_name(str)
  array = str.split
  "#{array[1]}, #{array[0]}"
end

p swap_name('Joe Roberts') == 'Roberts, Joe'