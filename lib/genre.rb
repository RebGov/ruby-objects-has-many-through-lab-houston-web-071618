class Genre

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

  def artists
    songs.map do |song|
      song.artist
    end
  end

  def add_song(song)
    self.songs << song
  end

end
