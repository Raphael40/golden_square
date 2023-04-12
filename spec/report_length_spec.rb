require './lib/report_length.rb'

RSpec.describe "Checks that the report_length method works" do
  it "returns 5 for a five letter word like horse in a string sentence" do
    result = report_length('horse')
    expect(result).to eq 'this string was 5 characters long.'
  end
end
