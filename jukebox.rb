require './player'
require './db/song'
require './playlist'
require './options/list_option'
require './options/play_option'
require './options/stop_option'
require './options/search_option'
require './options/exit_option'
require './options/playlist_view_option'
require './watcher'

#  Requirements
#
#  Your Jukebox should be able to:
#  - Provide a list of songs
#  - Search for a song by title (hint: you can use =~ in PostgreSQL)
#  - Add a song to a playlist
#  - Start playing your playlist
#
#  You can store you actual mp3 files in the music directory
#  and play them using Player.play(filename)
#
#  You can also stop the currently playing song with Player.stop
#
#  You should use a database to store your Jukebox's song library
#
#  Use object orientation and exceptions where appropriate
#
#  Optional:
#
#  Record each time a song is played and generate a report on popular songs.
#
#  Optional 2:
#
#  Record the start and end time stamps for when a song is played and Stopped
#  Include in your report what % of songs are played through
#  (Listeners will often skip songs they don't like so this is a good indicator
#  of whether they like a song or not).
#

class Jukebox
  def initialize
    @options = {
      1 => ListOption.new,
      2 => SearchOption.new,
      3 => PlayOption.new,
      4 => PlaylistViewOption.new,
      8 => StopOption.new,
      9 => ExitOption.new
    }
  end

  def run
    loop do
      puts "\nWhat would you like to do?\n"
      @options.each_pair do |id, option|
        puts "#{id}: #{option.message}"
      end
      puts
      option = @options[gets.chomp.to_i]
      option.perform
    end
  end
end

Jukebox.new.run
