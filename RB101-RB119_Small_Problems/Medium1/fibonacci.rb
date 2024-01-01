# def fibonacci(n)
#   if n <= 2
#     1
#   else
#     fibonacci(n - 1) + fibonacci(n - 2)
#   end
# end

def fibonacci(nth)
  first, last = [1, 1]
  3.upto(nth) do
    first, last = [last, first + last]
  end

  get_last_num(last)
end

def get_last_num(num)
  num.to_s[-1].to_i
end

p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20)