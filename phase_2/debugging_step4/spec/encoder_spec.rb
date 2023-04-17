require './lib/encoder'

RSpec.describe 'encode method should scramble text' do
  it 'scrambles a continuous string' do
    code = encode('theswiftfoxjumpedoverthelazydog', 'secretkey')
  
    expect(code).to eq 'EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL'
  end

  it 'unscrambles a scrambled string' do
    code = decode('EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL', 'secretkey')

    expect(code).to eq 'theswiftfoxjumpedoverthelazydog'
  end
end