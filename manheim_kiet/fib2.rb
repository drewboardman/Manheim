class Fib

  def fib(n)
    return 1 is n<=2
    fib(n-2) + fib(n-1)
  end
  
  def fib_sum(limit)
    (1..Float::INFINITY).lazy.take_while {|current_index| fib(current_index) <= limit}.select do |number|
      fib(number).even?
    end.reduce(:+)
  end

end