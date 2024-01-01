=begin
Write a method that displays a 4-pointed diamond in an n x n grid,
where n is an odd integer that is supplied as an argument to the method.
You may assume that the argument will always be an odd integer.

diamond(9)

    *
   ***
  *****
 *******
*********
 *******
  *****
   ***
    *

center of the diamond has n amount of *
diamond is made of asterisks
number of asterisk decreases as the rows get away from the center
argument is always going to be an odd number

center of the diamond will be determined by dividing the n by 2 and adding 1

multiplying spaces based on the quotient of n / 2 and then decrementing as we add more asterisks

data
strings, * and spaces

algorithm
method 1 argument = n

number of spaces = n / 2
number of asterisks = 1

loop
add spaces based on number of spaces and add asterisk
per loop, decrement the number of spaces by 1 and increment number of asterisks by 1
loop breaks if number of spaces == 0

space_limit = n / 2
asterisk_limit = 1

loop
initialize asterisk = n - 1
spaces = 1
per loop put spaces and asterisks and then decrement asterisks by 1 and increment spaces by 1
break if asterisk == number or asterisk

=end

# def diamond(num)
#   spaces = num / 2
#   asterisks = 1

#   loop do
#     puts (" " * spaces) + ("*" * asterisks)
#     break if asterisks == num
#     spaces -= 1
#     asterisks += 2
#   end

#   asterisk_limit = 1

#   loop do
#     asterisks -= 2
#     spaces += 1
#     puts (" " * spaces) + ("*" * asterisks)
#     break if asterisks == asterisk_limit
#   end
# end

# def print_row(grid_size, distance_from_center)
#   number_of_stars = grid_size - 2 * distance_from_center
#   stars = '*' * number_of_stars # *
#   mod_stars = modified_stars(stars)
#   puts mod_stars.center(grid_size)
# end

# def block_diamond(grid_size)
#   max_distance = (grid_size - 1) / 2 # 4
#   max_distance.downto(0) { |distance| print_row(grid_size, distance) } # ( 9 and 4)
#   1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
# end

# # p diamond(9)

# def modified_stars(star)
#   array = star.split('')
#   array.map.with_index do |star, index|
#     if index != 0 && index != (array.size - 1)
#       star.gsub('*', ' ')
#     else
#       star
#     end
#   end.join
# end

# p block_diamond(9)

# def diamond(n)
#   odd_array = []
#   (1..n).each {|num| odd_array << num if num.odd?}
#   total = odd_array + odd_array[0..-2].reverse

#   total.each do |num|
#     puts ' ' * ((n - num) / 2) + '*' * num
#   end
# end

# p diamond(3)