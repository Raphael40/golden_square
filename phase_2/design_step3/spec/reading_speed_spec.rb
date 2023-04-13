require 'reading_speed'

RSpec.describe "estimate of reading speed for text" do 
  it 'takes a string of any length and returns the time it would take the user to read it' do
    result = reading_speed('hello world')
    result_2 = reading_speed('hello world blah')
    result_3 = reading_speed('')
    expect(result).to eq 0.6
    expect(result_2).to eq 0.9
    expect(result_3).to eq 0
  end
  

end 