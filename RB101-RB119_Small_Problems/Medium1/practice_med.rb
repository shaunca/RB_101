# def reverse_word(str)
#   words = str.split
#   words.map! {|word| word.reverse}.join(' ')
# end

# p reverse_word("Hello World")

=begin
input a string
output longest substring that has letters in sequential alphabetical order

how to identify when to start the substring and when to end it
if the next letter in the string is not the next letter of the alphabet of the current letter,4
or the same letter, cut the substring off.
and start over

=end
# def longest_string(str)
#   alphabet = ('a'..'z').to_a
#   array = str.split('')
#   substr = ''
#   current_substr = ''

#   array.each_with_index do |letter, index|
#     if index == (array.size - 1)
#       if alphabet.index(letter) == \
#         alphabet.index(array[index - 1])
#         current_substr << letter
#       elsif alphabet.index(letter) - 1 == \
#         alphabet.index(array[index - 1])
#         current_substr << letter
#       else
#         current_substr = letter
#       end
#     elsif alphabet.index(letter) == \
#       alphabet.index(array[index + 1])
#       current_substr << letter
#     elsif alphabet.index(letter) + 1 == \
#       alphabet.index(array[index + 1])
#       current_substr << letter
#     else
#       current_substr = ''
#     end
#     substr = current_substr if substr.length < current_substr.length
#   end
#   substr
# end

# def find_substrings(string)
#   substrings = []
#   max_length = (string.length) - 1
#   (0..max_length).each do |start_index|
#     max_substring_length = string.length - start_index
#     (1..max_substring_length).each do |length|
#       substrings << string[start_index, length]
#     end
#   end
#   substrings
# end

# ALPHABET = ("a".."z").to_a

# def longest_string(string)
#   max_alpha_consec_substring = ""
#   substrings = find_substrings(string)

#   substrings.each do |substring|
#     bool_array = []
#     # p "SUBSTRING #{substring}"
#     # substring.chars.each_with_index do |char, index|
#     (0..substring.length-2).each do |index|
#       alphabet_index = ALPHABET.index(substring[index])
#       if substring[index + 1] == ALPHABET[alphabet_index + 1] || substring[index + 1] == substring[index]
#         # p "#{substring[index+1]} #{ALPHABET[alphabet_index+1]}"
#         bool_array << true
#       else
#         # p "NOT MATCHED #{substring[index+1]} #{ALPHABET[alphabet_index+1]}"
#         bool_array << false
#       end
#     end
#     if bool_array.all?
#       max_alpha_consec_substring = substring if substring.length >= max_alpha_consec_substring.length
#     end
#   end
#   max_alpha_consec_substring
# end

# p longest_string("a")
# p longest_string("abcdqrstuvwxyz") == "qrstuvwxyz"
# p longest_string("aboprsss") == "rsss"
# p longest_string("aboprs") #== "rs"
# p longest_string("abdffffff") == "ffffff"
# p longest_string("accdefg") == "ccdefg"

# p longest_string("aaaabbbbbbccccccddddddfffffffffffffffffffffffffffffffffffffffff")
# p longest_string("aboprsss") == "rsss"
# p longest_string("aboprs") == "rs"
# p longest_string("abdffffff") == "ffffff"
# p longest_string("accdefg") == "ccdefg"
# =begin
# insert bigger string

# input string
# output string

# existing strings are lowercase, modifications are uppercase
# for each letter, insert or add the entire alphabet until the next letter
# the alphabet inserted should not have any alphabet that is existing on the original string
# if letter repeats, do not insert anything.

# p bigger_string("hello") == "hIJKMNPQRSTUVWXYZeFGIJKMNPQRSTUVWXYZlMNPQRSTUVWXYZloPQRSTUVWXYZ"

# =end

# Next Bigger
# You have to create a function that takes a positive integer number and returns the next bigger number formed by the same digits:
#
# 12 ==> 21
# 513 ==> 531
# 2017 ==> 2071
#
# If no bigger number can be composed using those digits, return -1:
#
# 9 ==> -1
# 111 ==> -1
# 531 ==> -1

# p next_bigger(12) == 21
# p next_bigger(513) == 531
# p next_bigger(2017) == 2071
# p next_bigger(414) == 441
# p next_bigger(144) == 414
# p next_bigger(9) == -1
# p next_bigger(111) == -1
# p next_bigger(531) == -1

# Term frequency - inverse document frequency:
# A measure of how important a term is to a document in a collection of documents
# (the importance increases proportionally to the term frequency in the document,
# but decreases with the frequency of the word across documents)


# def generate_star(num)
# end
# star(7)

# *  *  *
# * * *
#   ***
# *******
#   ***
# * * *
# *  *  *


# def divisible_sum_pairs(array, num)
#   count = 0

#   array.each_with_index do |current_element, index|
#     next if index == 0
#     0.upto(index - 1) do |i|
#       pair = array[i] + current_element
#       count += 1 if pair % num == 0
#     end
#   end
#   count
# end

# p divisible_sum_pairs([1, 3, 2, 6, 1, 2], 3) == 5
# p divisible_sum_pairs([8, 10], 2) == 1
# p divisible_sum_pairs([5, 9, 10, 7, 4], 2) == 4
# p divisible_sum_pairs([29, 97, 52, 86, 27, 89, 77, 19, 99, 96], 3) == 15


=begin
Given an integer n, find the maximal number you can obtain by deleting exactly one digit of the given number.

delete_digit(791983) == 91983
delete_digit(152) == 52
delete_digit(1001) == 101
delete_digit(10) == 1

Input: Integer
Output: Integer- Maximal number

Rules:
Maximal number you can obtain by deleting exactly one digit of the given number
The output has one less digit than the input
Output is maximum digit we can find that satisfies criteria
Digits must be in same order

High level:
Option 1- Remove each digit, add each number combo to an array, find the max of the Array

Data structure:
Array to store all the combinations of Digits
Integer to store the maximum of the digits

Algorithm:
Initializing a variable to store combos of digits
Iterate through each digit, remove it and create a new number add new number to array
  initialize altered string variable
  String version of integer, delete it at the index that we're iterating
Build up array of all the combinations
Find the maximum of the Array

Helper method max
Store maximum integer in a variable
Iterate through each item of the Array
If the item is bigger than max we're goign to reassing max
at the end return max variable

Return the maximum

=end

=begin
def max(array)
  max_int = 0
  array.each do |num|
    num = num.to_i
    if num > max_int
      max_int = num
    end
  end
  max_int
end

def delete_digit(integer)
  combos = []
  integer.to_s.chars.each_index do |digit, index|
    altered_string = integer.to_s
    altered_string[index] = ""
   combos.push(altered_string)
  end
  max = max(combos)
end

p delete_digit(791983) == 91983
p delete_digit(152) == 52
p delete_digit(1001) == 101
p delete_digit(10) == 1

=end

# def string_sub(str)
#   alphabet = ('A'..'Z').to_a
#   string_arr = str.upcase.chars
#   dup_arr = string_arr.dup.uniq
#   new_alphabet = alphabet - dup_arr

#   string_arr.map.with_index do |char, index|
#     if string_arr[0..index].count(char) >= 2
#       char.downcase
#     else
#       char.downcase + (new_alphabet[new_alphabet.index(next_letter(char))..-1].join)
#     end
#   end.join
# end

# def next_letter(char)
#   alphabet = ('A'..'Z').to_a
#   next_letter = alphabet.index(char) + 1
#   alphabet[next_letter]
# end

# p string_sub("hello")

# given a string, capitalize the second last occurance of each character
# if only one occurance, leave it downcased

=begin
input : String
output : a capitalized version of the string, but only the second last occurance of each character

ex. 'aa' == 'Aa'

implicit = lowercase strings will be arguments, no numbers, and no spaces
          return value length is the same
          there are only max 2 characters per letter
explicit = return a capitalized version of the string, but only the second last occurance of each character

Data Structure
input : String
intermediate : arrays, in which elements are characters of the String
iterate each letter, and if letter occurs 2 times or more, then capitalize the first letter
output : string with capitalized letters only the ones that are second to the last occurence

Algorithm
def method take 1 string argument
initialize variable to store converted string to array with char as elements, but capitalized
iterate through the array and check whether the letter has existed on the next elements
count how many times the letter exists in the next elements
-- if the count is 1 then downcase the letter
-- leave it be if not
--if first letter, check the entire word if there is another instance of that letter
--if it does, go downcase
-- if not, leave it be

an array that's been iterated, and then join them together, and then swap the cases
return string with capitalized letters
=end

=begin
In this kata we will make a generator that generates text in a similar pattern, but instead of scrambled or reversed, ours will be sorted alphabetically

Requirement
return a string where:
1) the first and last characters remain in original place for each word
2) characters between the first and last characters must be sorted alphabetically
3) punctuation should remain at the same place as it started, for example: shan't -> sahn't
Assumptions
1) words are seperated by single spaces
2) only spaces separate words, special characters do not, for example: tik-tak -> tai-ktk
3) special characters do not take the position of the non special characters, for example: -dcba -> -dbca
4) for this kata puctuation is limited to 4 characters: hyphen(-), apostrophe('), comma(,) and period(.)
5) ignore capitalisation
for reference: http://en.wikipedia.org/wiki/Typoglycemia

input : string with punctuations
output : string where first and last char remain in place
         characters between the first and last letter should be sorted alphabetically

Data Structure
Input : String
intermediate, work with arrays
output : string, first and last characters retained, everything in between is sorted except for special characters

how are we going to retain the placement of special characters?
a way that we can insert them?
save their spot as we sort
multiple assignment

iterate through an array and just leave the punctuation unattended.

Algorithm
def method take 1 arg string
- convert string to array, words per element.
- convert string to array where elements are characters of array, iterative method
- save the indices of the special characters, and then reassign in the end after sorting :)
- how to save the indices of the special characters
 - ' , .
 use range to identify the letters
return string retain first and last letters, retain the special characters, sort everything in between
=end

# def scramble_words(str)
#   words_arr = str.split

#   words_arr.map! do |word|
#     has_special_index(word)
#   end
#   words_arr.join(' ')
# end

# def has_special_index(word)
#   alphabet = ('a'..'z').to_a
#   index_of_specials = nil
#   indexed_character = ''

#   word.chars.each_with_index do |letter, index|
#     if alphabet.include?(letter) == false
#       index_of_specials = index
#       indexed_character = letter
#       word[index] = ''
#     end
#   end
#   if index_of_specials
#     result = word[0] + word [1..-2].chars.sort.join + word[-1]
#     return result.insert(index_of_specials, indexed_character)
#   end
#   return word[0] if word.length == 1
#   return word[0] + word [1..-2].chars.sort.join + word[-1]
# end

# p scramble_words('professionals') == 'paefilnoorsss'
# p scramble_words('i') == 'i'
# p scramble_words('') == ''
# p scramble_words('me') == 'me'
# p scramble_words('you') == 'you'
# p scramble_words('card-carrying') == 'caac-dinrrryg'
# p scramble_words("shan't") == "sahn't"
# p scramble_words('-dcba') == '-dbca'
# p scramble_words('dcba.') == 'dbca.'
# p scramble_words("you've gotta dance like there's nobody watching, love like you'll never be hurt, sing like there's nobody listening, and live like it's heaven on earth.") == "you've gotta dacne like teehr's nbdooy wachintg, love like ylo'ul neevr be hrut, sing like teehr's nbdooy leiinnstg, and live like it's haeevn on earth."

# Have the method letter_changes(str) take the str parameter being passed and
# modify it using the following algorithm.
# Replace every letter in the string
# with the 3rd letter following it in the alphabet (ie. c becomes f, Z becomes C).
# Then return this modified string.

=begin
input : String
return : all letters being replaced by the third letter following it in the alphabet

implicit : do not touch special characters and numbers
          retain spaces
          letters are case sensitive, if capitalized, change with a capitalized letter
explicit :

Data Structure
Input : string
intermediate : array of the entire alphabet
convert the string into an array where elements are characters in the string
return : every letter changed to the third letter following in the alphabet
         do not touch special char or numbers and retain spaces

algorithm
def method take String

initialize entire alphabet in an array

converting the string into an array where elements are words
convert the array into another array where elements are characters in the string element and store that in a variable

iterate through that array and check whether an element is a letter
-- if not we will leave it be
-- if element is letter, we will then check for the index of that letter in our
alphabet array, and then add 3 to that index and replace that letter
--return that modified letter
--combine the letters together to recreate the word and then return that

--26 letters index + 1, + 3 , > 26 -26
[w x y z a b c X Y Z A B C]

--join the words again to make a full string and then return

return every letter changed to the third letter following in the alphabet
         do not touch special char or numbers and retain spaces

=end

# def letter_changes(str)
#   str_arr = str.split

#   result = str_arr.map do |word|
#     changes = word.chars.map do |char|
#       change_char(char)
#     end
#     changes.join
#   end
#   result.join(' ')
# end

# def change_char(char)
#   alphabet = ('a'..'z').to_a + ('a'..'c').to_a + ('A'..'Z').to_a + ('A'..'C').to_a

#   if alphabet.include?(char)
#     change_index = alphabet.index(char) + 3
#     return alphabet[change_index]
#   else
#     return char
#   end
# end

# p letter_changes("this long cake@&") == "wklv orqj fdnh@&"
# p letter_changes("Road trip9") == "Urdg wuls9"
# p letter_changes("EMAILZ@gmail.com") == "HPDLOC@jpdlo.frp"
# p letter_changes('xyz') == ('abc')

# p longest_string("abdffffff") == "ffffff"
# p bigger_string("hello") == "hIJKMNPQRSTUVWXYZeFGIJKMNPQRSTUVWXYZlMNPQRSTUVWXYZloPQRSTUVWXYZ"


=begin
input : array of alphabets, consecutive

output : missing letter in array

implicit
strings and arrays only, no numeric chars or special chars or other objects

explicit
valid array
exactly one missing char
length of array will be at least 2
one case, upper or lower

Data structure
input : array of alphabets, consecutive
intermediate : array of alphabets
hashes, keys are the letters in array, and values are true and false
where true is the letter exists in array, and false if letter does not exist
output : missing letter in array

Algorithm
input : array of alphabets, consecutive

initialize array of alphabets, range from the first letter of the given array to the last letter of the given array
initialize a hash, keys are the letters in array, and values are true and false
where true is the letter exists in array, and false if letter does not exist

iterate through the array of alphabets, and for every letter, check if the letter is in the hash
-- if it is, change value from false to true -- the letter exists

[a , b , d]
{a => true, b > true, c > false, d > true}

check the hash after, and look for a value that is falsy
if there is, we will return the key.

output : missing letter in array, string

=end

# def find_missing_letter(arr)
#   alphabets = (arr.first..arr.last).to_a
#   existing_letters = (alphabets.zip([false] * alphabets.size)).to_h

#   arr.each do |letter|
#     existing_letters[letter] = true
#   end

#   existing_letters.select {|k, v| v == false}.keys[0]
# end

# Use the English alphabet with 26 letters.

# p find_missing_letter(["a","b","c","d","f"]) == 'e'
# p find_missing_letter(["O","Q","R","S"]) == "P"
# p find_missing_letter(["b","d"]) == "c"
# p find_missing_letter(["a","b","d"]) == "c"
# p find_missing_letter(["b","d","e"]) == "c"






# For "x", determine how many positive integers less than or equal to "x" are odd but not prime. Assume "x" is an integer between 1 and 10000.

# Example: 5 has three odd numbers (1,3,5) and only the number 1 is not prime, so the answer is 1
# Example: 10 has five odd numbers (1,3,5,7,9) and only 1 and 9 are not prime, so the answer is 2

# A prime number (or a prime) is a natural number greater than 1 that has no positive divisors other than 1 and itself.

p odd_not_prime(15) == 3
p odd_not_prime(48) == 10
p odd_not_prime(82) == 20





# A substring is a contiguous (non-empty) sequence of characters within a string.

# A vowel substring is a substring that only consists of vowels ('a', 'e', 'i', 'o', and 'u') and has all five vowels present in it.

# Given a string word, return the number of vowel substrings in word.

p count_vowel_substrings("abcde") == 0
p count_vowel_substrings("cuaieuouac") == 7
p count_vowel_substrings("aeiouu") == 2
p count_vowel_substrings("unicornarihan") == 0

