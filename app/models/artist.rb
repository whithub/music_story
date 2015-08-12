class Artist < ActiveRecord::Base
  validates :name, presence: true

  def index
  end

  def show
  end

  def self.search(artist)
    if artist
      where('name LIKE ?', "%#{artist}%")
      redirect_to artist_path(artist)
    else
      find(:all)
    end
  end

end
