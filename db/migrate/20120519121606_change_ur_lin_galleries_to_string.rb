class ChangeUrLinGalleriesToString < ActiveRecord::Migration
  def up
    change_column :galleries, :url, :string
  end

  def down
  end
end
