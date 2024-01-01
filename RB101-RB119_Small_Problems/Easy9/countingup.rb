def sequence(num)
  result = []
  1.upto(num) {|num| result << num}
  result
end


p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
p (-1..1).to_a