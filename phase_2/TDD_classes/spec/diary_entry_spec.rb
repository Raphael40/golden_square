require './lib/diary_entry'

RSpec.describe DiaryEntry do
  it do 
    entry = DiaryEntry.new('day one', 'had a sandwich and some diet coke all by myself')
    
    expect(entry.title).to eq 'day one'
    expect(entry.contents).to eq 'had a sandwich and some diet coke all by myself'
  end

  it do
    entry = DiaryEntry.new('day one', 'had a sandwich and some diet coke all by myself')

    expect(entry.count_words).to eq 10
  end

  it do
    entry = DiaryEntry.new('day one', 'had a sandwich and some diet coke all by myself')

    expect(entry.reading_time(80)).to eq 0.13
    expect(entry.reading_time(100)).to eq 0.1
  end

  it 'fails for reading time if wpm is 0' do
    entry = DiaryEntry.new('day one', 'had a sandwich and some diet coke all by myself')

    expect {entry.reading_time(0)}.to raise_error 'wpm must be above 0'
  end

  it do 
    entry = DiaryEntry.new('day one', 'had a sandwich and some diet coke all by myself')

    expect(entry.reading_chunk(2, 2)).to eq 'had a sandwich and'
  end

  context 'reading_chunk' do
    it 'returns the next chunk the next time it is called' do
      entry = DiaryEntry.new('day one', 'had a sandwich and some diet coke all by myself')
      entry.reading_chunk(2, 2)
      chunk = entry.reading_chunk(2, 2)

      expect(chunk).to eq 'some diet coke all'
    end

    it 'prints the last words' do
      entry = DiaryEntry.new('day one', 'had a sandwich and some diet coke all by myself')
      entry.reading_chunk(2, 2)
      entry.reading_chunk(2, 2)
      chunk = entry.reading_chunk(2, 2)

      expect(chunk).to eq 'by myself'
    end

    it 'fails for reading time if wpm is 0' do
      entry = DiaryEntry.new('day one', 'had a sandwich and some diet coke all by myself')

      expect {entry.reading_chunk(0, 5)}.to raise_error 'wpm must be above 0'
    end

    it 'restarts after reading the whole contents' do
      entry = DiaryEntry.new('day one', 'had a sandwich and some diet coke all by myself')
      entry.reading_chunk(2, 2)
      entry.reading_chunk(2, 2)
      entry.reading_chunk(2, 2)
      chunk = entry.reading_chunk(2, 2)

      expect(chunk).to eq 'had a sandwich and'
    end

    it 'restarts if it finishes exactly on the end' do
      entry = DiaryEntry.new('day one', 'had a sandwich and some diet coke all by myself ye ye')
      entry.reading_chunk(2, 2)
      entry.reading_chunk(2, 2)
      entry.reading_chunk(2, 2)
      chunk = entry.reading_chunk(2, 2)

      expect(chunk).to eq 'had a sandwich and'
    end
  end
end