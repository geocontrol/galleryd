class AddGalleryIdToShows < ActiveRecord::Migration
  def change
    add_column :shows, :gallery_id, :integer
  end
end
