require './lib/check_codeword.rb'

RSpec.describe "checks  the check_codeword method" do
  it "returns correct when the codeword is horse" do
    result = check_codeword('horse')
    expect(result).to eq "Correct! Come in."
  end
  it "returns close when first letter is h and last letter is e" do
    result = check_codeword('hoe')
    expect(result).to eq "Close, but nope."
  end
  it "returns wrong when codeword is wrong" do 
    result = check_codeword('hello')
    expect(result).to eq "WRONG!"
  end
end