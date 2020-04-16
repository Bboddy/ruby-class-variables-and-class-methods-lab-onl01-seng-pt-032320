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
    @@genres.each { |genre|
      if genre_count[genre]
        genres_count[genre] += 1
      else
        genres_count[genre] = 1
      end
    }
    return genres_count
  end
end