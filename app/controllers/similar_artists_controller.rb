class SimilarArtistsController < ApplicationController
  def index
    @similar_artists  = Echowrap.artist_similar(name: params[:artist_id], results: 4)
  end
end
