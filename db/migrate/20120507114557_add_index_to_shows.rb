class AddIndexToShows < ActiveRecord::Migration
  def change
  end
  add_index :shows, [:gallery_id]
end
