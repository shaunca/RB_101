####
arr = [["a"], ["a", "c"]]

lol = arr.map do |num|
       num.select do |um|
         um.upcase
       end
      end

p arr

####

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

arr.select { |n| n.odd? }

####

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

new_array = arr.select do |n|
       n + 1
end

p new_array

####

words = %w(jump trip laugh run talk)

new_array = words.map do |word|
       word.start_with?("t")
end

p new_array

####

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

arr.each { |n| puts n}

####

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

new_array = arr.map do |n|
       n > 1
end

p new_array

####

a = "hello"

[1, 2, 3].map { |num| a }

####

[1, 2, 3].each do |num|
       puts num
end

       