require './lib/music_list'

RSpec.describe MusicList do
  context 'dont input songs an ask to list' do
    it 'fails' do
      track_item = MusicList.new

      expect { track_item.list }.to raise_error 'You have no tracks'
    end
  end

  context 'Input single track' do
    it 'returns a single track' do
      track_item = MusicList.new
      track_item.add('song')

      expect(track_item.list).to eq ['song']
    end
  end

  context 'Input multiple tracks' do
    it 'returns a multiple tracks' do
      track_item = MusicList.new
      track_item.add('song')
      track_item.add('song_2')

      expect(track_item.list).to eq ['song', 'song_2']
    end
  end
end