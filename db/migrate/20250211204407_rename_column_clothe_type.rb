class RenameColumnClotheType < ActiveRecord::Migration[7.1]
  def change
    rename_column :clothes, :type, :clothe_type
  end
end
