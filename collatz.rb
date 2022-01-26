require "pry-byebug"

def collatz(n)

  if n == 1
    return 0
  elsif n.even?
    return 1 + collatz(n/2)
  else n.odd?
    return 1 + collatz(3*n+1)
  end
end

puts collatz(27)