require 'punctuation_checker'

RSpec.describe 'a method that verifies sentence opens and closes correctly' do 
  context 'returns false' do
    it "returns false when given empty string" do 
      result = punctuation_checker('')

      expect(result).to eq false
    end 
    it 'returns false when given an uncapitalized string with invalid ending' do 
      result = punctuation_checker('hey there buddy')

      expect(result).to eq false
    end
    it 'returns false when caps is present but no ending punctuation' do
      result = punctuation_checker('Hey there buddy')

      expect(result).to eq false
    end
    it 'returns false with valid ending but no caps' do
      result = punctuation_checker('hey there buddy.')
      result_2 = punctuation_checker('hey there buddy!')
      result_3 = punctuation_checker('hey there buddy?')

      expect(result).to eq false
      expect(result_2).to eq false
      expect(result_3).to eq false
    end
  end

  context 'returns true for caps combined with ., !, ?' do
    it 'returns true for caps with .' do
      result = punctuation_checker('Hey there buddy.')

      expect(result).to eq true
    end
    it 'returns true for caps with ?' do
      result = punctuation_checker('Hey there buddy?')

      expect(result).to eq true
    end
    it 'returns true for caps with !' do
      result = punctuation_checker('Hey there buddy!')

      expect(result).to eq true
    end
  end
end 