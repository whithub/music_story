class ArtistsController < ApplicationController
  before_filter :require_authentication

  def index
    if params[:search] && (@artist = Echowrap.artist_search(name: params[:search]).first)
      redirect_to artist_similar_artists_path(@artist.name)
    else
      flash[:notice] = "There is no artist by that name. Please try again."
      redirect_to genres_path
    end
  end

  def show
    @artist           = Echowrap.artist_search(name: params[:id]).first
    @artist_images    = Echowrap.artist_images(name: @artist.name)
    # @artist_bio       = Echowrap.artist_biographies(name: @artist.name).last
    @videos           = Echowrap.artist_video(name: @artist.name, results: 8)
    # @websites         = Echowrap.artist_urls(name: @artist.name)
    # @twitter          = Echowrap.artist_twitter(name: @artist.name).twitter
    # @similar_artists  = Echowrap.artist_similar(    name: @artist.name, results: 6)
    # @reviews          = Echowrap.artist_reviews(    name: @artist.name).first(2)
    # @familiarity      = Echowrap.artist_familiarity(name: @artist.name)
  end

end
