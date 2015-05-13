class Playlist
  def self.<<(song)
    songs << song
  end

  def self.songs
    @@songs ||= []
  end

  def self.pop
    songs.delete_at(0)
  end
end
