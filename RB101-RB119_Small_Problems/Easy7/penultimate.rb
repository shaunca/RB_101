def penultimate(str)
  result = str.split(' ')
  result[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'