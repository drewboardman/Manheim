n = 1000

def find_sum(number)
  (0...number).to_a.select {|number| number%3 == 0 || number%5 == 0}.reduce(:+)
end

puts find_sum(n)