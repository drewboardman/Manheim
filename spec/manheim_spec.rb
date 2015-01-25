require "spec_helper"

context 'Sums' do
  describe '#find_sum' do
    it "returns the correct sum" do
      expect(Sums.new.find_sum(1000)).to eq(233168)  
    end
  end
end