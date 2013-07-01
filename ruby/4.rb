# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

def isPalindrome(x)
  x = x.to_s
  ret = true

  k = 0
  j = x.length - 1
  while k < j do
    if x[k] == x[j]
      puts "#{x[k]} == #{x[j]}"
      k = k + 1
      j = j - 1
    else
      puts "#{x[k]} != #{x[j]}"
      ret = false
      break
    end
  end
  return ret
end

def findPalindromes()
  dromes = []
  x = 999
  y = 999
  z = 12
  while y > 99
    z = x * y
    if isPalindrome(z)
      puts z
      dromes << z
    end
    x = x - 1
    if x < 100
      y = y - 1
      x = y
    end
  end
  dromes
end

puts findPalindromes