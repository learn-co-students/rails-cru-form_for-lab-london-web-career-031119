class ChangeColumn < ActiveRecord::Migration[5.0]
  def change
    change_column :songs, :artist_id, :integer
    change_column :songs, :genre_id, :integer
  end
end
