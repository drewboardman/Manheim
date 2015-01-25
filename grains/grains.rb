class Grains
  attr_accessor :chessboard

  def initialize
    @chessboard = (2..64).to_a.each_with_object({1 => 1}) {|square, hash| hash[square] = hash[square-1]*2}
  end

  def count_grains(n)
    chessboard[n]
  end

  def total
    chessboard.values.reduce(:+)
  end
end