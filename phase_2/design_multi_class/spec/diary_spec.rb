require 'diary'

RSpec.describe do
  it 'adds a diary entry and then lists it' do
    diary = Diary.new
    diary.add_entry("my entry")

    expect(diary.list_entries).to eq ["my entry"]
  end

  context 'filters phone numbers from diary entires' do
    it 'stores and lists a number when a diary entry has a number' do
      diary = Diary.new
      diary.add_entry("aphex 07927829971 twin")
      expect(diary.list_mobile_numbers).to eq ["07927829971"]
    end

    it 'stores and lists a number when a diary entry has a number' do
      diary = Diary.new
      diary.add_entry("aphex 07927829971 twin 0728489329846")
      expect(diary.list_mobile_numbers).to eq ["07927829971", "0728489329846"]
    end

    it 'takes two number in two entries and returns both' do
      diary = Diary.new
      diary.add_entry("aphex 07927829971")
      diary.add_entry("twin 07927829972")
      expect(diary.list_mobile_numbers).to eq ["07927829971", "07927829972"]
    end
  end

  context 'filters diary entries based on speed' do
    it "it returns the entry that best matches the reading speed and time available" do
      diary = Diary.new
      diary.add_entry("my entry")
      diary.add_entry("more and more and more words")
      expect(diary.diary_entries_based_on_speed(3, 2)).to eq ["more and more and more words"]
    end

    it "fails if there are no entries that match how much time i have" do
      diary = Diary.new
      diary.add_entry("my entry")
      diary.add_entry("blah blah blah meh")
      expect { diary.diary_entries_based_on_speed(3, 2) }.to raise_error "There are no suitable diary entries."
    end
  end

end