class ArtistsController < ApplicationController

  def index
    if params[:search] && (@artist = Echowrap.artist_search(name: params[:search]).first)
      redirect_to artist_path(@artist.name)
    else
      redirect_to genres_path
      flash[:notice] = "There is no artist by that name. Please try again."
    end
  end

  def show
    @artist           = Echowrap.artist_search(     name: params[:id]).first
    @artist_images    = Echowrap.artist_images(     name: @artist.name)
    @artist_bio       = Echowrap.artist_biographies(name: @artist.name).first
    @videos           = Echowrap.artist_video(      name: @artist.name).sample(4)
    @websites         = Echowrap.artist_urls(       name: @artist.name)
    @twitter_handle   = Echowrap.artist_twitter(    name: @artist.name).twitter
    @similar_artists  = Echowrap.artist_similar(    name: @artist.name, results: 4)
    @reviews          = Echowrap.artist_reviews(    name: @artist.name).first(2)
    # @familiarity      = Echowrap.artist_familiarity(name: @artist.name)


    # @spotify_artist   = RSpotify::Artist.search(params[:id]).first
    # @profile_pic      = @spotify_artist.images.third
    # @related_artists  = @spotify_artist.related_artists.first(6)
    # @spotify_website  = @spotify_artist.external_urls['spotify']
    # @artist_thumbnail = @spotify_artist.images.last['url']
  end


  private

  def spotify_artists
    RSpotify::Artist
  end
end
