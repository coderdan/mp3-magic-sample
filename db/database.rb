
require 'rubygems'
require 'pg'

class Database
  def self.connection(dbopts = {})
    @@conn ||= PG.connect(dbopts)
  end

  def connection
    self.class.connection
  end

  def self.all
    connection.exec("SELECT * FROM #{table_name}").map { |row| new(row) }
  end

  def self.find(id)
    result = connection.exec("SELECT * FROM #{table_name} WHERE id = $1", [id])
    new(result[0])
  end
end

Database.connection(dbname: 'jukebox')
