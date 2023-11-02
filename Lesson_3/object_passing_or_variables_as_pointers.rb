# Object Passing / Variables As Pointers

a = "hi there"
b = a
a = "not here"

# what are a and b? 

####

a = "Hi there"
b = a 
a << ", Bob"
# what are a and b?

####

a = [1, 2, 3, 3]
b = a
c = a.uniq
# what are a, b, and c? What happens if 'c = a.uniq!' ?

####

def test(str)
  str += "!"
  str.downcase!
end

test_str = "Written Assessment"
test(test_str)

# What is the return value? 
####

a = 5.2
b = 7.3
a = b
b += 1.1

# What is a and b? 
####

def test(b)
  b.map { |letter| "I like the letter: #{letter}" }
end

a = ["a", "b", "c"]
test(a)
# Explain the return value. What if map was map! on line 2?
####

def plus(x, y)
  x = x + y
end

a = 3
b = plus(a, 2)

puts a
puts b

####

def increment(x)
  x << 'b'
end

y = 'a'

increment(y)
puts y

####

def change_name(name)
  name = "bob" # does this reassignment change the object outside the method?
end

name = 'jim'

change_name(name)
puts name

####

def cap(str)
  str.capitalize! #does this affect the object outside method?
end

name = "jim"

cap(name)
puts name

####

a = [1,3]
b = [2]

arr = [a, b]
p arr

a[1] = 5

p arr

####

arr1 = ["a", "b", "c"]
arr2 = arr1.dup
arr2.map! do |char|
  char.upcase 
end

puts arr1
puts arr2
####
