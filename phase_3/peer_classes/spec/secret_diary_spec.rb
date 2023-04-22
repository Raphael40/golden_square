require 'diary'

RSpec.describe SecretDiary do
  context 'initially' do
    it 'does not read because it is locked' do
      diary = double :diary
      secret_diary = SecretDiary.new(diary)
      expect { secret_diary.read }.to raise_error 'Go away!'
    end
  end

  context 'when unlocked' do
    it 'reads the undelying diary' do
      diary = double :diary, read: 'fake contents'
      secret_diary = SecretDiary.new(diary)
      secret_diary.unlock 

      expect(secret_diary.read).to eq 'fake contents'
    end
  end

  context 'when relocked' do
    it 'does not read the underlying diary' do
      diary = double :diary, read: 'fake contents'
      secret_diary = SecretDiary.new(diary)
      secret_diary.unlock 
      secret_diary.lock

      expect { secret_diary.read }.to raise_error 'Go away!'
    end
  end
end