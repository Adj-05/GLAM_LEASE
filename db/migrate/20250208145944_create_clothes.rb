class CreateClothes < ActiveRecord::Migration[7.1]
  def change
    create_table :clothes do |t|
      t.string :type
      t.string :color
      t.string :size
      t.string :genre
      t.references :user, null: false, foreign_key: true
      t.integer :price_per_day

      t.timestamps
    end
  end
end
