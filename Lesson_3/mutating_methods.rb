#Object Mutability/ Mutating Methods
def fix(value)
  value.upcase!
  value.concat("!")
  value
end

s = 'hello'
t = fix(s)

####

def fix(value)
  value.upcase
  value.concat("!")
  value
end

s = 'hello'
t = fix(s)

####

def fix(value)
  value << 'xyz'
  value = value.upcase
  value.concat("!")
end

s = 'hello'
t = fix(s)

####

def fix(value)
  value = value.upcase!
  value.concat("!")
end

s = "hello"
t = fix(s)

####

def fix(value)
  value[1] = 'x'
end

s = "abc"
t = fix(s)

####

def a_method(string)
  string << 'world'
end

a = 'hello'
a_method(a)

####

a = %w(a b c) 
a[1] = '-'
p a

#### 

def add_name(arr, name)
  arr = arr + [name]
end

names = ['bob', 'kim'] 
add_name(names, 'jim') 
puts names

####

s = "hello"

p s[0] << "Ho" 
p s

####

string = "hey"

array = ["hey"]

def string_and_array_index(string, array)

  string[0] = "wh" # whey # indexed reassignment.    #whey
  string[0] << "e" # we #wehy                        #referring a different string object
  string[0].upcase! # W # WEHY                       #same here
  array[0] = "hi" #['hi']                            #
  array[0] << "p" # ['hi', 'p'] #['hip']
  array[0].upcase! # ['HI', 'p'] #['HIP']
end

string_and_array_index(string, array)

p string # whey # 'WEHY'
p array # ["HI", 'p'] #['HIP']