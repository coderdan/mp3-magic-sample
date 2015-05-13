
class ListOption
  def message
    "List all Songs"
  end

  def perform
    puts "\nAll Songs\n==========================\n"
    Song.all.each do |song|
      puts song
    end
    puts
  end
end
