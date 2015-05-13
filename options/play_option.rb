
class PlayOption
  def message
    "Play a Song"
  end

  def perform
    puts "What song would you like to play?"
    id = gets.chomp
    song = Song.find(id)
    if Player.playing?
      puts "Added to playlist"
      Playlist << song
    else
      song.play
    end
  end
end
