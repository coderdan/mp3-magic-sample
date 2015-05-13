class SearchOption
  def message
    "Search for a song by title"
  end

  def perform
    puts "Enter Term: "
    term = gets.chomp
    results = Song.search(term)
    if results.empty?
      puts "No results"
    else
      results.each { |res| puts res }
    end
  end
end
