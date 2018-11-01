class Song 
  attr_accessor :name, :artist, :genre
  @@count = 0 
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    i = 0 
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1 
    @@genres << genre
    @@artists << artist
  end 
  
  def self.count
    @@count
  end
  
  def self.genres
    @@genres.uniq 
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genre_count
    genre_counter = {}
    self.genres.each do |genre|
      genre_counter[genre] = @@genres.count{|g| genre ==  g}
    end
    genre_counter
  end
  
  def self.artist_count
    artist_counter = {}
    self.artists.each do |artist|
      artist_counter[artist] = @@artists.count{|a| artist ==  a}
    end
    artist_counter
  end
end