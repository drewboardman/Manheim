require_relative '../fib.rb'
require_relative '../fib_memo.rb'
require "time"

describe "Fib" do
  context '#fib' do
    it "returns the correct fib using recursion" do
      expect(Fib.new.fib(32)).to eq(2178309)
    end

    it "returns the correct fib using memoization" do
      expect(FibMemo.new.fib_memo(32)).to eq(2178309)
    end
  end
end