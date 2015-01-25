require "prime"

class NthPrime
  RANGE = 1..Float::INFINITY

  def find_prime(n)
    primes = (RANGE).lazy.select {|num| num.prime?}.take(n).max
  end
end