require "spec_helper"

describe "Fib" do
  context '#fib' do
    it "returns the correct fib" do
      expect(Fib.new.fib(1)).to eq(1)
      expect(Fib.new.fib(4)).to eq(3)
      expect(Fib.new.fib(7)).to eq(13)
      expect(Fib.new.fib(29)).to eq(514229)
    end
  end

  context '#fib_sum' do
    it "adds only the even fibs" do
      expect(Fib.new.fib_sum(4_000_000)).to eq(4613732)
    end
  end
end