require './lib/gratitudes.rb'

RSpec.describe Gratitudes do
  it "takes a single gratitude and formats it successfully as a string" do
    new_gratitudes = Gratitudes.new
    new_gratitudes.add('Horse')
    result = new_gratitudes.format
    expect(result).to eq "Be grateful for: Horse"
  end

  context "passing multiple elements into the gratitudes array" do
    it "outputting all elements of the array successfully joined in a string" do
      new_gratitudes = Gratitudes.new
      new_gratitudes.add('Horse')
      new_gratitudes.add('Carts')
      new_gratitudes.add('Hay')
      result = new_gratitudes.format
      expect(result).to eq "Be grateful for: Horse, Carts, Hay"
    end

    it "will convert non-string array elements into string " do
      new_gratitudes = Gratitudes.new
      new_gratitudes.add('Horse')
      new_gratitudes.add(5)
      new_gratitudes.add('Hay')
      result = new_gratitudes.format
      expect(result).to eq "Be grateful for: Horse, 5, Hay"
    end

    it "will not convert nil into the string 'nil'" do
      new_gratitudes = Gratitudes.new
      new_gratitudes.add('Horse')
      new_gratitudes.add(nil)
      new_gratitudes.add('Hay')
      result = new_gratitudes.format
      expect(result).to eq "Be grateful for: Horse, , Hay"
    end
  end
end