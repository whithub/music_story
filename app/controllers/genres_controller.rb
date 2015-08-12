class GenresController < ApplicationController

  def index
  end

  def show
    @artists = Echowrap.artist_search(genre: params[:id], sort: "familiarity-desc", results: 12)   #TODO change from 3 requests to 30
    render layout: false
  end

end
