require './db/database'

class Song < Database
  def self.table_name
    "songs"
  end

  def self.search(term)
    connection.exec("SELECT * FROM songs WHERE title ~* $1", [term]).map do |row|
      new(row)
    end
  end

  attr_reader :title, :id, :artist

  def initialize(attrs)
    @id       = attrs['id']
    @title    = attrs['title']
    @artist   = attrs['artist']
    @filename = attrs['filename']
  end

  def to_s
    "#{@id}: #{@title} by #{@artist}"
  end

  def play
    Player.play(@filename)
  end
end
