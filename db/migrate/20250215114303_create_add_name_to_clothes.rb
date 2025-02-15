class CreateAddNameToClothes < ActiveRecord::Migration[7.1]
  def change
  add_column :clothes, :name, :string
    end
end
