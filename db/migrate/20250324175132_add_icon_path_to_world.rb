class AddIconPathToWorld < ActiveRecord::Migration[7.1]
  def change
    add_column :worlds, :icon_path, :string
  end
end
