require './lib/diary'
require './lib/diary_entry'

RSpec.describe "Diary integration" do

  it 'lists out the entries added' do
    diary = Diary.new
    entry = DiaryEntry.new('day 1', 'had a sandwich')
    entry_2 = DiaryEntry.new('day 1', 'had a bigger sandwich')
    diary.add(entry)
    diary.add(entry_2)

    expect(diary.all).to eq [entry, entry_2]
  end

  describe 'word counting behaviour' do
    it 'counts the words in all diary entries' do
      diary = Diary.new
      entry = DiaryEntry.new('day 1', 'had a sandwich')
      entry_2 = DiaryEntry.new('day 1', 'had a bigger sandwich')
      diary.add(entry)
      diary.add(entry_2)

      expect(diary.count_words).to eq 7
    end
  end

  describe 'reading time behaviour' do
    # remember the case where wpm is 0

    it 'calculates the reading time for all entries' do
      diary = Diary.new
      entry = DiaryEntry.new('day 1', 'had a sandwich')
      entry_2 = DiaryEntry.new('day 1', 'had a coke')
      diary.add(entry)
      diary.add(entry_2)

      expect(diary.reading_time(2)).to eq 3
    end
  end
end