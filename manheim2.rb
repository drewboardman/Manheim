class Sums
  
  def find_sum(n)
    # (1...n).lazy.to_a.each_with_object([]) {|num, arr| arr << num if (num%3 ==0 || num%5 == 0)}.reduce(:+)
    (1...n).lazy.select {|num| num%3 == 0 || num%5 == 0 }.reduce(:+)
  end

end