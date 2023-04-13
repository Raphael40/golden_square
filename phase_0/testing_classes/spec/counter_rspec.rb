require 'counter.rb'


RSpec.describe Counter do
  random_number = rand(100)
  
  it "Adds 5 to 0 and reports 5 in a string" do
    new_count = Counter.new()
    new_count.add(5)
    result = new_count.report
    expect(result).to eq "Counter to 5 so far."
  end

  it "Adds a random number to 0 and reports total in a string" do
    new_count = Counter.new()
    new_count.add(random_number)
    result = new_count.report
    expect(result).to eq "Counter to #{random_number} so far."
  end

  it "it returns error when Counter is passed a non-integer to add" do
    new_count = Counter.new()
    result = new_count.add('x')
    expect(result).to eq "failed, only pass an integer"
  end
end