class AddImagePathToWorlds < ActiveRecord::Migration[7.1]
  def change
    add_column :worlds, :image_path, :string
  end
end
