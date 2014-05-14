class CreateFlowers < ActiveRecord::Migration
  def change
    create_table :flowers do |t|
      t.string :name
      t.text :description
      t.decimal :price

      t.timestamps
    end
  end
end
