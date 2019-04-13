class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.count
    # return the number of songs in a genre
  end

  def artist_count
    unique_artists = self.songs.map{|song| song.artist}.uniq.count
    #unique_artists.count
    # return the number of artists associated with the genre
  end

  def all_artist_names
    unique_artists = self.songs.map{|song| song.artist.name}.uniq


    # return an array of strings containing every musician's name
 end
end
