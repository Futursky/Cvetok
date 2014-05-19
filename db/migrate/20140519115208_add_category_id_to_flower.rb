class AddCategoryIdToFlower < ActiveRecord::Migration
  def change
    add_column :flowers, :category_id, :integer
  end
end
