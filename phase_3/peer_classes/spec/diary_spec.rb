require 'diary'

RSpec.describe Diary do
  it 'sets contents and reads' do
    diary = Diary.new('An contents')

    expect(diary.read).to eq 'An contents'
  end
end