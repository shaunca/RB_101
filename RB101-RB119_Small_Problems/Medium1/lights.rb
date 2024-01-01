=begin
arrays


initialize an array using the argued integer = all_numbers
for every multiple of the current integer iterating, the respective switches of the integers are switched from on and off
sort the array using the current iterating integer

create 2 arrays, on and off arrays
initialize a loop that checks whether its multiples are in all_numbers, then checks whether the multiples are in on and off arrays
if the multiple is in on array, delete the multiple and push it to the off array, vice versa
break out of the loop

return the on array

round 2: lights 2 and 4 are now off; 1, 3, 5 are on
round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
=end

def lights(num)
  all_numbers = (1..num).to_a
  on = []
  off = (1..num).to_a

  1.upto(num) do |i|
    multiples = all_numbers.select {|x| x % i == 0}
    multiples.each do |x|
      if off.include?(x)
        off.delete(x)
        on.push(x)
      elsif on.include?(x)
        on.delete(x)
        off.push(x)
      end
    end
  end
  on.sort
end

p lights(1000)