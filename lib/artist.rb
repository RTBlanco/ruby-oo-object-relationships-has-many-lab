require "pry"
class Artist
  attr_accessor :name
  def initialize(name)
    @name = name
  end

  def songs
    Song.all.collect {|song| song if song.artist == self}
  end

  def add_song(song)
    song.artist = self
  end

  def add_song_by_name(song)
    song_name = Song.new(song)
    song_name.artist = self
  end

  def self.song_count
    Song.all.count
  end
  
end
