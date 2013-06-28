# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

def isPrime(x)
  upTo = (2...x).to_a
  upTo.each do |n|
    if (x % n == 0)
      return false
    end
  end
  return true
end

def primeFactors(max)
  primes = []
  primeFactors = []
  increm = 1
  while increm < max do
    increm += 1
    if isPrime(increm)
      while max % increm === 0
        max = max / increm
        primeFactors << increm
        if increm == max 
          return increm
        end
      end
      if increm == max 
        return primeFactors
      end
    end
  end
  primeFactors
end



puts primeFactors(600851475143)


