class Song
  attr_accessor :count, :artist, :genre, :name
  
  @@count = 0
  @@artists = []
  @@genres = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count +=1
    @@genres << genre
    @@artists << artist
  end
  
  def self.count
    @@count
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.genres_count
    genres_count = {}
    i = 0
    @@genres.each { |genre|
      if genre_count[genre]
        genres_count[genre] = i+1
      else
        i = 1
    }
    return genres_count
  end
end