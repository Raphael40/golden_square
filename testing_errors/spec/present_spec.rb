require './lib/present.rb'

RSpec.describe Present do
  context 'tests that pass' do
    it 'wraps contents into a present then returns that same contents when unwrapped' do
      present_contents = Present.new
      present_contents.wrap('horse')
      result = present_contents.unwrap
      expect(result).to eq 'horse'
    end

    it 'can also wrap non-strings as presents' do
      present_contents = Present.new
      present_contents.wrap(5)
      result = present_contents.unwrap
      expect(result).to eq 5
    end
  end

  context 'tests that fail ' do
    it 'fails successfully when no contents is given to be wrapped' do
      present_contents = Present.new
      present_contents.wrap(nil)
      expect { present_contents.unwrap() }.to raise_error "No contents have been wrapped."
    end
    
    it 'Will wrap and then unwrap multiple contents into and out of presents' do
      present_contents = Present.new
      present_contents.wrap('gift')
      expect { present_contents.wrap('horse') }.to raise_error 'A contents has already been wrapped.'
    end
  end
end