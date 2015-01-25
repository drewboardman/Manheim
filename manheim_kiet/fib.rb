class Fib

  def fib(n)
    return n if n <= 1
    fib(n-1) + fib(n-2)  
  end

  def fib_sum(limit)
    even_fibs = [0]

    (1..Float::INFINITY).lazy.each do |num| 
      break if fib(num) >= limit
      even_fibs << fib(num) if fib(num).even?
    end

    even_fibs.reduce(:+)
  end

end