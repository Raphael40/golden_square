require './lib/make_snippet'

RSpec.describe 'takes a sentence as a string and returns the first five words and a ...' do
  xit 'takes a string and returns the same string' do
    result = make_snippet('I am a little string')

    expect(result).to eq 'I am a little string'
  end

  xit 'takes a string and returns the first five words' do
    result = make_snippet('I am a medium sized string')

    expect(result).to eq 'I am a medium sized'
  end
end