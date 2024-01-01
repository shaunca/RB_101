=begin
A
def reverse!(list)
intialize index at 0
initialize last index at the last index of the list
initiate a while loop with the condition that the current index has not reached the middle index of the collection
iterate through list and assign the first element to the last index of result until all indexes are filled vice versa
increment index by 1 and decrement last index by 1
return list
=end

def reverse!(list)
  index = 0
  last_index = list.size - 1

  while index <= (list.size / 2)
    list[index], list[last_index] = list[last_index], list[index]
    index += 1
    last_index -= 1
  end
  list
end
