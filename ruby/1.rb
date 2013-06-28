# If we list all the natural numbers below 10 that are multiples 
# of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.

def sumOfMultsOf3and5(max)
  sum = 0
  for i in 0..max-1
    if i % 3 == 0 || i % 5 == 0
      sum += i
    end
  end
  sum
end

puts sumOfMultsOf3and5(1000)
