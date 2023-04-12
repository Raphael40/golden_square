require 'string_builder'

RSpec.describe StringBuilder do
  it "returns the length of the strings added" do
    new_string = StringBuilder.new
    new_string.add("Horse")
    result = new_string.size
    expect(result).to eq 5
  end

  it "returns 'HorseCart' when 'Horse', then 'Cart', added to new string" do
    new_string = StringBuilder.new
    new_string.add("Horse")
    new_string.add("Cart")
    result = new_string.output
    expect(result).to eq "HorseCart"
  end

  it "returns an error when asked to add a non-string" do
    new_string = StringBuilder.new
    result = new_string.add(83267457)
    expect(result).to eq "Nah dawg, I only add strings."
  end
end