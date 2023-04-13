require 'punctuation_checker'

RSpec.describe 'a method that verifies sentence opens and closes correctly' do 
  it "returns false when given empty string" do 
    result = punctuation_checker("")
    expect(result).to eq false
  end 
  it "returns true when given any string" do 
    result = punctuation_checker("hey there")
    expect(result).to eq true 
  end
end 