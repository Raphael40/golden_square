require './lib/make_snippet'

RSpec.describe 'takes a sentence as a string and returns the first five words and a ...' do

  context 'passing tests' do
    it 'returns the first five words without a ... if there is less than 5 words' do
      result = make_snippet('I am tiny')

      expect(result).to eq 'I am tiny'
    end

    it 'takes a string and returns the first five words followed by ... if more than 5 words' do
      result = make_snippet('I am a medium sized string')

      expect(result).to eq 'I am a medium sized...'
    end
  end

  context 'failing tests' do
    it 'flags an error if empty' do 
      expect { make_snippet('') }.to raise_error 'Please enter a string'
    end
  end
end