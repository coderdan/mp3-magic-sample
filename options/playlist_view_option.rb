
class PlaylistViewOption
  def message
    "View Playlist"
  end

  def perform
    puts "\nPlaylist\n==========================\n"
    Playlist.songs.each_with_index do |song, index|
      puts "#{index + 1}: #{song.title}"
    end
    puts
  end
end
