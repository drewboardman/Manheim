require_relative "../fib_memo.rb"

describe "Fib" do
  context '#fib_memo' do
    it "returns the correct fib_memo" do
      expect(FibMemo.new.fib_memo(1)).to eq(1)
      expect(FibMemo.new.fib_memo(4)).to eq(3)
      expect(FibMemo.new.fib_memo(7)).to eq(13)
      expect(FibMemo.new.fib_memo(29)).to eq(514229)
      expect(FibMemo.new.fib_memo(500)).to eq(139423224561697880139724382870407283950070256587697307264108962948325571622863290691557658876222521294125)
    end
  end

  context '#fib_sum' do
    it "adds only the even fibs" do
      expect(FibMemo.new.fib_sum(4_000_000)).to eq(4613732)
    end
  end
end