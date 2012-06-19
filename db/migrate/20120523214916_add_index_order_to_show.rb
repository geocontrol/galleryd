class AddIndexOrderToShow < ActiveRecord::Migration
  def change
  end
  add_index_sort_order :shows, :end
end
