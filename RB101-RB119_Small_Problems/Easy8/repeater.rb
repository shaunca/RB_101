
def repeater(str)
  letters = ('a'..'z').to_a + ('A'..'Z').to_a
  vowels = %w(A E I O U a e i o u)
  consonants = letters - vowels
  array = str.chars
  array.map! do |char|
    if consonants.include?(char)
      char * 2
    else
      char
    end
  end
  array.join
end

p repeater('String')
p repeater("Hello-World!") == "HHellllo-WWorrlldd!"
p repeater("July 4th") == "JJullyy 4tthh"
p repeater('') == ""