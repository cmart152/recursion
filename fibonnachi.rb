require "pry-byebug"

def fib(n)
  arr = []
  until n == 0 
    arr << fibonacci(n)
    n -= 1
  end
  arr.reverse
end

def fibonacci(n)
  if n == 0
    0
  elsif n == 1
    1
  else
    fibonacci(n-1) + fibonacci(n-2)
  end
end

p fib(6)
puts fibonacci(0)
puts fibonacci(1)
puts fibonacci(2)
puts fibonacci(3)
puts fibonacci(4)
