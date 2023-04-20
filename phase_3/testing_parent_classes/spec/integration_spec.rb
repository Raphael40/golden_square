require 'music_library'
require 'track' 

RSpec.describe 'music library and track intgration' do
  xit '' do
    music_library = MusicLibrary.new
    track_1 = Track.new('Notorious BIG', 'Juicy (clean version)')
    track_2 = Track.new('Funky Artist', 'Crazy Track')
    music_library.add(track_1)
    music_library.add(track_2)

    expect(music_library.all).to eq [track_1, track_2]
  end
end