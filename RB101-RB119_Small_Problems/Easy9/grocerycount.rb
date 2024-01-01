
def buy_fruit(array)
  array.map do |subarr|
    [subarr[0]] * subarr[1]
  end.flatten
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]])