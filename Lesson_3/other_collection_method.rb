####

[1, 2, 3].all? do |num|
  num > 2
end

####

[1, 2, 3].each_with_index do |num, index|
  puts "the index of #{num} is #{index}."
end

####

{ a: "ant", b: "bear", c: "cat" }.each_with_object([]) do |pair, array|
  array << pair.last
end

####

{ a: "ant", b: "bear", c: "cat" }.each_with_object({}) do |(key, value), hash|
  hash[value] = key
end

####

odd, even = [1, 2, 3].partition do |num|
  num.odd?
end

p odd
p even

####