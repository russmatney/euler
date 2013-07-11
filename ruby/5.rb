# 2520 is the smallest number that can be divided by each of the numbers from 1
# to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the
# numbers from 1 to 20?

def IsDivisibleUpTo(x)
  # checks if it is divisible up to max
  max = 20
  for i in 2..max
    if x % i != 0
      return false
    end
  end
  return true
end

def brutishForcish(tldr)
  ans = []
  for i in 2..tldr
    if IsDivisibleUpTo(i)
      ans << i
    end
    if ans.length > 0
      return i
    end
  end
end

puts brutishForcish(252000000)

# prolly better to build an array that is only multiples primes, 
# then check only those values against the non-prime 1-20
