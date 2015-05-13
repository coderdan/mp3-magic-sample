class Watcher
  class << self
    attr_accessor :stop
  end

  def self.run
    Thread.new do
      while !stop
        while Player.playing?
          sleep 0.1
        end
        next_track = Playlist.pop
        next_track.play if next_track
        sleep 0.1
      end
    end
  end
end
