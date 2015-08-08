class ArtistsController < ApplicationController

  # def index
  #   @artists = spotify_artists.artists
  # end

  def show
    @artist = Echowrap.artist_search(name: params[:id])
    # @artist = spotify_artists.find(params[:id])
  end

  def related_artists
    @artist.related_artists
  end


  private

  def spotify_artists
    RSpotify::Artist
  end
end
