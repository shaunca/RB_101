a = "hello"
b = a
a = "goodbye"

p a 
p b

####

a = 4

loop do 
  a = 5
  b = 3
  
  break
end

p a
p b

####

a = 4
b = 2

loop do
  c = 3
  a = c
  break
end

p a
p b

####

def example(str)
  i = 3
  loop do
    puts str
    i -= 1
    break if i == 0
  end
end

example("hello")

####

def greetings(str)
  puts str
  puts "goodbye"
end

word = "Hello"
greetings(word)

####

arr = [1, 2, 3, 4]
counter = 0
sum = 0

loop do
  sum += arr[counter]
  counter += 1
  break if counter == arr.size
end
  
puts "Your total is #{sum}"

####

a = "bob"

5.times do |x|
  a = "Bill"
end

p a