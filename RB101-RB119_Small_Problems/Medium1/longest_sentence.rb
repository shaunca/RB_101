def longest_sentence(text)
  sentences = text.split(/\.|\?|!/)
  size = 0

  sentences.each do |sentence|
    if size < sentence.split.size
      size = sentence.split.size
    else
      sentence
    end
  end
  size
end

def sentence_split(string)
  string.split(/(\.|\?|\!)/).each_slice(2).map(&:join)
end

p sentence_split("Hi. How are you?")