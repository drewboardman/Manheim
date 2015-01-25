require "spec_helper"

describe "NthPrime" do

  context '#find_prime' do
    it "returns 13 for n = 6" do
      expect(NthPrime.new.find_prime(6)).to eq(13)  
    end
  end
  
end