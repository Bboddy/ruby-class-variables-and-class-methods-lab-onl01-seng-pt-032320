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
  
  def self.genre_count
    retunrGenre = {}
    @@genres.each { |genre|
      if retunrGenre[genre]
        retunrGenre[genre] += 1 
      else
        retunrGenre[genre] = 1
      end
    }
    retunrGenre
  end
  
  def self.artist_count
    retunrArist = {}
    @@artists.each { |artist|
     if retunrArist[artist]
       retunrArist[artist] += 1 
     else
       retunrArist = 1
     end
    }
  end
end