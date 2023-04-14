require './lib/say_hello'

RSpec.describe 'say_hello method says hello to a name' do
  it 'returns a string "hello Julian"' do
    result = say_hello('julian')

    expect(result).to eq 'hello julian'
  end
end