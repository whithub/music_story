class GenresController < ApplicationController

  def index
  end

  def show
    @artists = Echowrap.artist_search(genre: params[:id], results: 3)
  end

  private
  def genres

  end

end
