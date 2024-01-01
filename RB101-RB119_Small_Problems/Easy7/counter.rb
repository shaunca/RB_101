vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(array)
  result = {}

  array.each do |element|
    if result.include?(element)
      result[element] += 1
    else
      result[element] = 1
    end
  end

  result.each do |key, value|
    puts "#{key} => #{value}"
  end
end

count_occurrences(vehicles)

