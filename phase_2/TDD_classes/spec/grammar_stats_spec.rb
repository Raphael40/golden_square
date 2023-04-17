require './lib/grammar_stats'

RSpec.describe 'GrammarStats' do

  context 'returns true for caps combined with ., !, ?' do

    it 'returns true for caps with .' do
      sentence = GrammarStats.new
      result = sentence.check('Hey there buddy.')

      expect(result).to eq true
    end

    it 'returns true for caps with ?' do
      sentence = GrammarStats.new
      result = sentence.check('Hey there buddy?')

      expect(result).to eq true
    end

    it 'returns true for caps with !' do
      sentence = GrammarStats.new
      result = sentence.check('Hey there buddy!')

      expect(result).to eq true
    end
  end

  context 'checking percentage' do
    it 'returns an percentage' do
      sentence = GrammarStats.new
      sentence.check('Hey there buddy!')
      sentence.check('Howdy partner.')
      sentence.check('whats going on')

      expect(sentence.percentage_good).to eq 66
    end
  end
end