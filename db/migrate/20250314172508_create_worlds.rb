class CreateWorlds < ActiveRecord::Migration[7.1]
  def change
    create_table :worlds do |t|
      t.string :title
      t.boolean :done
      t.references :path, null: false, foreign_key: true
      t.integer :index

      t.timestamps
    end
  end
end
