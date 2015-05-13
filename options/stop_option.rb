
class StopOption
  def message
    "Stop Currently Playing Song"
  end

  def perform
    Player.stop
  end
end
