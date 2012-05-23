class AddHastagToShow < ActiveRecord::Migration
  def change
    add_column :shows, :hashtag, :string
  end
end
