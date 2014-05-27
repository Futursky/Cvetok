class AddImagableIdToImages < ActiveRecord::Migration
  def change
    add_column :images, :imagable_id, :integer
  end
end
