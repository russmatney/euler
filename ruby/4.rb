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



puts isPalindrome(3899359983)