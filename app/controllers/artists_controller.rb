class ArtistsController < ApplicationController

  # def index
  #   @artists = spotify_artists.artists
  # end

  def show
    @artist = Echowrap.artist_search(name: params[:id]).first
    @artist_images = Echowrap.artist_images(name: @artist.name)  #use Spotify images... has 4 set images sizes...
    @artist_bio = Echowrap.artist_biographies(name: @artist.name).first
    # @artist_albums = Echowrap.artist_albums(name: @artist.name)     #user Spotify??

    @artist_news = Echowrap.artist_news(name: @artist.name).first

    @related_artists = Echowrap.artist_similar(name: @artist.name, results: 20)
  end

  private

  def spotify_artists
    RSpotify::Artist
  end
end
