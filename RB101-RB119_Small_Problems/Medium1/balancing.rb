=begin
Write a method that takes a string as an argument,
and returns true if all parentheses in the string are properly balanced, false otherwise.
To be properly balanced, parentheses must occur in matching '(' and ')' pairs.


input = string
output = boolean if parentheses are balanced
condition if () pairs are paired, if one pair is lacking, then false
we don't care about the string cahracters inside the string
() (( ))

account for () pairs if they are actually enclosing each other

how to count the parenthses and how do we identify them?

convert string into array where elements are characters
iterate through them and count for parentheses
count ( separately
count ) separately
and if they are equal then return true
and if not then return false

algorithm

variable = array from string with chars as elements
pair parentheses initialize = 0

iterate array and count for parentheses
--- if it meets "(" parentheses
      look for a ")" parentheses
      ----- iterate through the array again and look for ")"
      if it does, add 2 counts to the pair count var
      if ")" first, then ignore

compare count_rightpar and count leftpar and return boolean

=end

# def balanced?(str)
#   array = str.chars
#   count_rightpar = 0
#   count_leftpar = 0
#   denied = 0

#   array.each_with_index do |char, index|
#     if char.include?(")")
#       count_rightpar += 1
#       pair_exist = array[index..-1].select {|char| char.include?("(")}
#       denied += 1 if pair_exist.size == 0 || nil
#     elsif char.include?("(")
#       count_leftpar += 1
#       pair_exist = array[index..-1].select {|char| char.include?(")")}
#       denied += 1 if pair_exist.size == 0 || nil
#     else
#       char
#     end
#   end
#   return false if denied >= 1
#   return count_rightpar == count_leftpar
# end

def balanced?(string)
  parens = 0
  string.each_char do |char|
    parens += 1 if char == '('
    parens -= 1 if char == ')'
    break if parens < 0
  end

  parens.zero?
end


p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
p balanced?('What ())(is() up') == false