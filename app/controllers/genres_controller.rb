class GenresController < ApplicationController

  def index
  end

  def show
    @artists = Echowrap.artist_search(genre: params[:id], sort: "familiarity-desc", results: 3)   #TODO change from 3 requests to 30
  end

  private
  def genres

  end

end
