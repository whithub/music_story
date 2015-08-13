class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.belongs_to :user
      t.string :artist_name
      t.string :found_through
      t.timestamps
    end

    add_index :likes, :user_id
  end
end
