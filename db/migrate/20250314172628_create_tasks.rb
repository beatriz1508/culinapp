class CreateTasks < ActiveRecord::Migration[7.1]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :ingredients
      t.text :steps
      t.boolean :done
      t.references :world, null: false, foreign_key: true
      t.integer :index

      t.timestamps
    end
  end
end
