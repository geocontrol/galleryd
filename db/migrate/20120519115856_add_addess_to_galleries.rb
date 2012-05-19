class AddAddessToGalleries < ActiveRecord::Migration
  def change
    add_column :galleries, :address1, :string
    add_column :galleries, :address2, :string
    add_column :galleries, :postcode, :string
  end
end
