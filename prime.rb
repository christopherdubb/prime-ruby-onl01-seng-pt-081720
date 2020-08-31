require 'benchmark'
require 'bigdecimal/math'

# calculate pi to 10k digits
puts Benchmark.measure { BigMath.PI(10_000) }

def sieve(max)
 
  primes = (0..max).to_a
  primes[0] = primes[1] = nil

  counter = 0
  primes.each do |p|
   
    next unless p

    break if p*p > max
    counter += 1
  
    
    (p*p).step(max,p) { |m| primes[m] = nil }
  end

  puts "Solved for #{max} in #{counter} steps."
  primes.compact
end

def prime?(num)
  sieve(num).include?(num)
end