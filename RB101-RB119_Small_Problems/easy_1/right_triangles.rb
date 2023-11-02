def triangle(number)
  spaces = number - 1
  stars = 1
  
  number.times do |n|
    puts (" " * spaces) + ("*" * stars)
    spaces -= 1
    stars += 1
  end
end

triangle(5)

#Try modifying your solution so it prints the triangle upside down from its current orientation. 

def upside_right_triangle(number)
  spaces = 0
  stars = number
  
  number.times do |n|
    puts (" " * spaces) + ("*" * stars)
    spaces += 1
    stars -= 1
  end
end

upside_right_triangle(5)

#Try modifying your solution again so that you can display the triangle with the right angle at any corner of the grid.

puts ">> Please select how many stars for your right triangle:"
number = gets.chomp.to_i

puts ">> Where would you like the right angle to be? (Please input the number of the selection)"
puts "1) Upper Left Corner 2) Upper Right Corner"
puts "3) Lower Left Corner 4) Lower Right Corner"
answer = gets.chomp

puts ">> Thank you for your input! Here's your desired right triangle!"
case answer
when "1"
  def upside_left_triangle(number)
    stars = number
  
    number.times do |n|
      puts ("*" * stars)
      stars -= 1
    end
  end
  upside_left_triangle(number)
  
when "2"
  def upside_right_triangle(number)
    spaces = 0
    stars = number
  
    number.times do |n|
      puts (" " * spaces) + ("*" * stars)
      spaces += 1
      stars -= 1
    end
  end
  upside_right_triangle(number)  
  
when "3"
  def flip_triangle(number)
    stars = 1
  
    number.times do |n|
      puts ("*" * stars) 
      stars += 1
    end
  end
  flip_triangle(number)
  
else 
  def triangle(number)
    spaces = number - 1
    stars = 1
  
    number.times do |n|
      puts (" " * spaces) + ("*" * stars)
      spaces -= 1
      stars += 1
    end
  end
  triangle(number)  
  
end
