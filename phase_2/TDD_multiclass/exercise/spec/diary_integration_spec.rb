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
    it 'fails when wpm is 0' do
      diary = Diary.new
      entry = DiaryEntry.new('day 1', 'had a sandwich')
      diary.add(entry)
      expect { diary.reading_time(0) } .to raise_error 'WPM must be positive'

    end

    it 'calculates the reading time for all entries' do
      diary = Diary.new
      entry = DiaryEntry.new('day 1', 'had a sandwich')
      entry_2 = DiaryEntry.new('day 1', 'had a coke')
      diary.add(entry)
      diary.add(entry_2)

      expect(diary.reading_time(2)).to eq 3
    end
  end

  describe 'best reading time entry behaviour' do
    context 'we just have one entry' do
      it 'returns that entry ' do
        diary = Diary.new
        entry = DiaryEntry.new('day 1', 'A sandwich')
        diary.add(entry)
        result = diary.find_best_entry_for_reading_time(2, 1)
        
        expect(result).to eq entry
      end
    end

    context 'where we just have one entry and it is unreadable in the time' do
      it 'returns nil' do
        diary = Diary.new
        entry = DiaryEntry.new('day 1', 'had a sandwich')
        diary.add(entry)
        result = diary.find_best_entry_for_reading_time(2, 1)
        
        expect(result).to eq nil
      end
    end
  end
end