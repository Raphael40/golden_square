require './lib/diary_entry'

RSpec.describe DiaryEntry do
  it 'constructs' do
    diary_entry = DiaryEntry.new('birthday', 'lots of cake')

    expect(diary_entry.title).to eq 'birthday'
    expect(diary_entry.contents).to eq 'lots of cake'
  end

  describe '#count_words' do
    it 'returns zero if contents is empty' do
      diary_entry = DiaryEntry.new('birthday', '')

      expect(diary_entry.count_words).to eq 0
    end

    it 'returns 1 when contents is one word' do
      diary_entry = DiaryEntry.new('birthday', 'hi')

      expect(diary_entry.count_words).to eq 1
    end

    it 'counts the words in the contents' do
      diary_entry = DiaryEntry.new('birthday', 'lots of cake')

      expect(diary_entry.count_words).to eq 3
    end
  end

  describe ' #reading_time' do

    it 'fails when wpm is 0' do
      diary_entry = DiaryEntry.new('birthday', 'lots of cake')

      expect { diary_entry.reading_time(0) }.to raise_error 'WPM must be positive'
    end

    it 'returns zero if contents is empty' do
      diary_entry = DiaryEntry.new('birthday', '')

      expect(diary_entry.reading_time(2)).to eq 0
    end

    it 'returns 1 when contents is one word' do
      diary_entry = DiaryEntry.new('birthday', 'hi')

      expect(diary_entry.reading_time(2)).to eq 1
    end

    it 'returns a reding time for the contents' do
      diary_entry = DiaryEntry.new('birthday', 'lots of cake')

      expect(diary_entry.reading_time(2)).to eq 2
    end
  end
end