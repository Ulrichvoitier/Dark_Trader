require_relative '../lib/crypto.rb'

#describe 'page' do
 #   it 'page' do
  #     expect(page = Nokogiri::HTML4::Document).to eq("https://coinmarketcap.com/all/views/all/")
  #  end
    
describe 'devise' do
   it 'should return an array of hashes' do
       expect(devise.class).to_eq(Array)
   end
     it "should return a value for the first 3 symbols" do
        expect(devise(0,0)).to eq("BTC")
        expect(devise(1,0)).to eq("ETH")
        expect(devise(2,0)).to eq("USDT")
end
    
    it "should return a value for the first values symbols" do
        expect(valeur(0,0)).to_not be_nil
        expect(valeur(1,0)).to_not be_nil
        expect(valeur(2,0)).to_not be_nil
    end
end

#describe 'valeur' do
 #   it 'takes values' do 
  #      expect(())
   # end
#end