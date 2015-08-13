class GenresController < ApplicationController
  before_filter :require_authentication

  def index
  end

  def show
    @artists = Echowrap.artist_search(genre: params[:id], sort: "familiarity-desc", results: 12)
    render layout: false
  end

end
