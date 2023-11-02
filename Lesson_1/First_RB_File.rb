def string_lengths(sentence)
  strings = sentence.split

  strings.map { |chars| chars.length }
end
puts string_lengths("To be or not be")