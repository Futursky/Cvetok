class AddImagableTypeToImages < ActiveRecord::Migration
  def change
    add_column :images, :imagable_type, :integer
  end
end
