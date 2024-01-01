
=begin
input = str
output = an array consisting of palindromes as elements

explicit = case sensitive
           substring order is the order in which the argument is ordered
           duplicates are included
implicit = other characters than alphabets are included

DATA
arrays, strings

Algorithm
create a method that will create substrings that starts with 2 characters for each character in the string
---use the slice method multiple times and create a sub array consisting of possible substrings with given character
create a method that will determine which one is a palindrome or not
---reverse the string and return a boolean
return an array with palindromic substrings
=end



def take_substrings(str)
  str.length.times.map {|num| str.slice(0..num)}
end

def all_substrings(str)
  array = str.chars
  new_array = array[0..-1]
  result = []
  start_index = 0

  loop do
    result << take_substrings(new_array.join)
    start_index += 1
    break if start_index == array.size
    new_array = array[start_index..-1]
  end

  result.flatten.select {|word| word.length > 1}
end

def is_palindrome?(str)
  str.reverse == str
end

def palindromes(str)
  substrings = all_substrings(str)
  substrings.select {|word| is_palindrome?(word)}
end

p palindromes('abcd')
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]