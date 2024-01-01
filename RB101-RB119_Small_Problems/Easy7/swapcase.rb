=begin
Write a method that takes a string as an argument and returns a new string in which every uppercase letter is
replaced by its lowercase version, and every lowercase letter by its uppercase version. All other characters should be unchanged.

You may not use String#swapcase; write your own version of this method.

input = string
output = new string in which every lowercase is replaced by a uppercase vice versa

explicit = no swapcase

implicit = no integers or other objects

DATA
strings and arrays

Algorithm
convert string to array with every character as its element
initialize letters contanining every letter in its uppercaase and lowercase counterparts
iterate thru the collection and check for lowercse and uppercase and change them to their counterpart
otherwise ignore
 if lower case, turn uppercase
 if uppercase, turn lowercase
 if neither, ignore
convert the array back to string and return it.

=end

def swapcase(str)
  result = str.chars
  lowercase = ('a'..'z').to_a
  uppercase = ('A'..'Z').to_a

  result.map! do |char|
    if lowercase.include?(char)
      char.upcase
    elsif uppercase.include?(char)
      char.downcase
    else
      char
    end
  end.join
end


p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

