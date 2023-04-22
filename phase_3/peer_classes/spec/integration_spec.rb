require 'secret_diary'
require 'diary'

RSpec.describe 'integration' do
  context 'initially' do
    it 'does not read the diary because it is locked' do
      diary = Diary.new('an contents')
      secret_diary = SecretDiary.new(diary)
      expect { secret_diary.read }.to raise_error 'Go away!'
    end
  end

  context 'when it is unlocked' do
    it 'reads the diary conents' do
      diary = Diary.new('an contents')
      secret_diary = SecretDiary.new(diary)
      secret_diary.unlock
      expect(secret_diary.read).to eq 'an contents'
    end
  end

  context 'when it is relocked' do
    it 'it does not read the diary because it is locked' do
      diary = Diary.new('an contents')
      secret_diary = SecretDiary.new(diary)
      secret_diary.unlock
      secret_diary.lock
      
      expect { secret_diary.read }.to raise_error 'Go away!'
    end
  end
end