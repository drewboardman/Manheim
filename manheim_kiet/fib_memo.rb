class FibMemo
  attr_accessor :fibs

  def initialize
    @fibs = []
  end

  def fib_memo(n)
    if n <= 1
      return n
    elsif fibs[n]
      return fibs[n]
    else
      fibs[n] = fib_memo(n-2) + fib_memo(n-1)
    end
    return fibs[n]
  end

  def fib_sum(limit)
    even_fibs = [0]

    (1..Float::INFINITY).lazy.each do |num| 
      break if fib_memo(num) >= limit
      even_fibs << fib_memo(num) if fib_memo(num).even?
    end

    even_fibs.reduce(:+)
  end
end