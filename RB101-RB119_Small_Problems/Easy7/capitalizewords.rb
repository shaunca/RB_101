=begin
Write a method that takes a single String argument and returns a new string
that contains the original value of the argument with the first character of every word capitalized and all other letters lowercase.

You may assume that words are any sequence of non-blank characters.

input = a string
output = a new string with words capitalized

explicit = words are any sequence of non blank characters
implicit = quotations and other signs or characters not alphabetic are not considered words to be capitalized
          arguments are always in lowercase?

DATA
arrays and strings

ALGORITHM
convert string to array where each element is every word
initialize lowercase array containing all lowercase alphabetical letters
initialize array and assign the array
iterate through the array and capitalize words that are purely alphabetic, anything else will not be capitalized
convert the array back into a string and return it
=end

def word_cap(str)
  array = str.split(' ')
  letters_arr = (('a'..'z').to_a + ('A'..'Z').to_a).flatten

  array.map! do |word|
    if word.chars.all? {|char| letters_arr.include?(char)}
      word.capitalize
    else
      word
    end
  end.join(' ')
end


p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

p 'this is a "quoted" word'.split