require 'music_library'

RSpec.describe MusicLibrary do
  it 'adds and lists tracks' do
    music_library = MusicLibrary.new
    track_1 = double :track
    track_2 = double :track
    music_library.add(track_1)
    music_library.add(track_2)
  end

  it 'searches tracks by title' do
    music_library = MusicLibrary.new
    track_1 = Track.new('Notorious BIG', 'Juicy (clean version)')
    track_2 = Track.new('Funky Artist', 'Crazy Track')
    music_library.add(track_1)
    music_library.add(track_2)

    expect(music_library.search("BIG")).to eq track_1
  end
end