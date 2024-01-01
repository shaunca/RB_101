=begin
Write a method that takes a string, and then returns a hash that contains 3 entries:
represents the number of characters in the string that are lowercase letters,
one represents the number of characters that are uppercase letters,
and one represents the number of characters that are neither.

input = a string
output = return a hash 3 entries lowercase, uppercase and neither count

explicit = count lowercase and count uppercase
          count other characters as neither
implicit = spaces count neither
          nil string returns 0 on every category.

DATA
Hash and strings

Algorithm
def letter case count and take 1 string as argument
initialize result hash containing three keys, lowercase, uppercase, and neither, with values at 0
initialize arrays that contain lowercase and uppercase letters separately

iterate through the string and increment the values of the keys in result has if it meets requirements
  if current character includes lowercase, increment 1 to the value of lowercase key
  elsif current character includes uppercase char, increment 1 to the value of uppercase kay
else is an increment 1 to neither
return the hash
=end

def letter_case_count(str)
  result = {
    lowercase: 0,
    uppercase: 0,
    neither:0
  }
  uppercase_arr = ('A'..'Z').to_a
  lowercase_arr = ('a'..'z').to_a

  str.chars.each do |char|
    if uppercase_arr.include?(char)
      result[:uppercase] += 1
    elsif lowercase_arr.include?(char)
      result[:lowercase] += 1
    else
      result[:neither] += 1
    end
  end
  percentages(result, str)
end

def percentages(hsh, str)
  total = str.length.to_f
  hsh.map do |key, value|
    (value.to_f / total) * 100
  end
end

p letter_case_count('abCdef 123')
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }