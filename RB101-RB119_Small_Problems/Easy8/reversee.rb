def reverse_sentence(str)
  array = str.split
  array.reverse.join(' ')
end

p reverse_sentence('Hello World') == 'World Hello'
p reverse_sentence('Reverse these words') == 'words these Reverse'
p reverse_sentence('') == ''
p reverse_sentence('    ') == '' # Any number of spaces results in ''

def reverse_words(str)
  array = str.split
  array.map do |word|
    if word.length >= 5
      word.reverse
    else
      word
    end
  end.join(' ')
end

p reverse_words('Professional')          # => lanoisseforP
p reverse_words('Walk around the block') # => Walk dnuora the kcolb
p reverse_words('Launch School')         # => hcnuaL loohcS