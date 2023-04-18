class MusicList
  def initialize
    @tracks_list = []
  end
  
  def add(track)
    @tracks_list << track
  end

  def list
    fail 'You have no tracks' if @tracks_list.empty?
    return @tracks_list
  end
end