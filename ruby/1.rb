def multsOf3and5(max)
  sum = 0
  for i in 0..max-1
    if i % 3 == 0 || i % 5 == 0
      sum += i
    end
  end
  sum
end

puts multsOf3and5(1000)
