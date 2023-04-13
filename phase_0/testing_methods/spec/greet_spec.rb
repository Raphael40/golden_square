require './lib/greet.rb'

RSpec.describe "test the greet method" do
  it "returns Hello plus a name, in this case Julian" do 
    result = greet("Julian")
    expect(result).to eq "Hello, Julian!"
  end
end