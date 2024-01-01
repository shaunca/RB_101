
def leading_substrings(str)
  array = str.chars
  result = []

  array.each_with_index do |char, index|
    result << array[0..index]
  end

  result.map do |letters|
    letters.inject(:+)
  end.flatten
end

p leading_substrings('abc')# == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

def substrings(str)
  array = str.chars
  result = []
  counter = 0

  loop do
    break if counter >= array.size
    array.each_with_index do |char, index|
      result << array[counter..index]
    end
    counter += 1
  end

  final = result.map do |letters|
    letters.inject(:+)
  end

  final.flatten.select {|substr| substr}
end



p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

# b = [1]

# b.shift

# p b.size == 0
