class ArtistsController < ApplicationController

  def index
  end

  def show
    @artist = RSpotify::Artist.find_by()
  end
end
