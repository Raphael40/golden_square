require 'diary'

RSpec.describe do
  it 'adds a diary entry and then lists it' do
    diary = Diary.new
    diary.add_entry("my entry")

    expect(diary.list_entries).to eq ["my entry"]
  end
end