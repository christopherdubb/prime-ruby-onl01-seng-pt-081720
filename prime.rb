def prime?(num)
  sieve(num).include?(num)
end
puts prime?(105557)