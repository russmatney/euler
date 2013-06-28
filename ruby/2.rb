def isEven(x)
  if x % 2 == 0 then true
  else false
  end
end

sumOfEven = 0
fibbs = Array.new
def fibbing(fibbs, x)
  if x == 0
    return 1
  elsif x == 1
    return 1
  else
    fib = fibbs[x] + fibbs[x-1]
    fibbs.push(fib)
    fibbing(fibbs, x + 1)
  else
    for i in 0..fibbs.length-1
      if isEven(fibbs[i])
        sumOfEven += fibbs[i]
      end
    end
  sumOfEven
  end
end

puts fibbing(fibbs, 2)