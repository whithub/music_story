class Artist < ActiveRecord::Base

  # def artist
  #   artist = Echonest::Artist.new('YOUR-API-KEY', 'Weezer')
  # end

  def index
    @artists = spotify.artists
  end

end
