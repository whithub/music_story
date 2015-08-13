class SimilarArtistsController < ApplicationController
  before_filter :require_authentication

  def index
    @similar_artists = Echowrap.artist_similar(name: params[:artist_id], results: 4)
  end
end
