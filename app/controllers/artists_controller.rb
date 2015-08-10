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
    @artist           = Echowrap.artist_search(name: params[:id]).first
    @artist_images    = Echowrap.artist_images(name: @artist.name)  #use Spotify images... has 4 set images sizes...
    @artist_bio       = Echowrap.artist_biographies(name: @artist.name).first
    @artist_blog      = Echowrap.artist_blogs(name: @artist.name).first
    @artist_news      = Echowrap.artist_news(name: @artist.name).first
    @videos           = Echowrap.artist_video(name: @artist.name).first(1) #TODO change number to 12..24?
    @websites         = Echowrap.artist_urls(name: @artist.name)
    @twitter_handle   = Echowrap.artist_twitter(name: @artist.name).twitter
    @similar_artists  = Echowrap.artist_similar(name: @artist.name).take(2)
    # @similar_artist_images = @similar_artists.each do |artist|
    #   Echowrap.artist_images(name: artist.name)
    # end
    @reviews = Echowrap.artist_reviews(name: @artist.name).first(1)
    @familiarity      = Echowrap.artist_familiarity(name: @artist.name)
    # @artist_albums = Echowrap.artist_albums(name: @artist.name)     #user Spotify??
    #@related_artists = Echowrap.artist_similar(name: @artist.name, results: 20)


    @spotify_artist   = RSpotify::Artist.search(params[:id]).first
    # @profile_pic      = @spotify_artist.images.third

    # @related_artists  = @spotify_artist.related_artists.first(6)  #TODO change number to 12..24?

    @spotify_website  = @spotify_artist.external_urls['spotify']
    @artist_thumbnail = @spotify_artist.images.last['url']
  end


  def artist_thumbnail
    @spotify_artist.images.last['url']
  end


  private

  def spotify_artists
    RSpotify::Artist
  end
end
