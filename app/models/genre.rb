class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.count
  end

  def artist_count
    self.artists.all.count
  end

  def all_artist_names
    self.artists.all.map {|artist| artist.name}
  end
end
