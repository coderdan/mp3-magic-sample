
class ExitOption
  def message
    "Quit the Jukebox"
  end

  def perform
    Watcher.stop
    Player.stop
    puts "\nThanks for stopping by!"
    exit
  end
end
