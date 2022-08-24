
class Song

  @@count=0
  @@genres=[]
  @@artists=[]

  attr_accessor :name,:artist,:genre

  def initialize(name,artist,genre)
    @@count+=1
    @@genres<<genre
    @@artists<<artist
    @name,@artist,@genre=name,artist,genre
  end
  def Song.count
    @@count
  end

  def Song.genres
    @@genres.uniq
  end

  def Song.artists
    @@artists.uniq
  end

  def Song.genre_count
    @@genres.tally
  end

  def Song.artist_count
    @@artists.tally
  end
end
