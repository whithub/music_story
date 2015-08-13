class Like < ActiveRecord::Base
  belongs_to :user

  validates_presence_of :artist_name, :found_through
end
