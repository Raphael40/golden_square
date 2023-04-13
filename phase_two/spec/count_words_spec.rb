require './lib/count_words'

RSpec.describe 'count_words takes a string as an argument and returns the number of words' do

  it 'takes a string and returns an integer' do
    result = count_words('Hello i am string man')

    expect(result).to be_an(Integer)
  end

  it 'expects the integer ton represent the length of the string' do 
    result = count_words('Hello i am string man')
    result_two = count_words('I am another, cooler, bigger, string man')

    expect(result).to eq 5
    expect(result_two).to eq 7
  end
end