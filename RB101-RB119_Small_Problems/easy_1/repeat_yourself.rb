def repeat(x , y) 
  count = y
  
  until count == 0
    puts "#{x}"
    count -= 1
  end
end

repeat('Hello', 3)

def repet(string, number)
  number.times do
    puts string
  end
end

repet('Hi', 5)