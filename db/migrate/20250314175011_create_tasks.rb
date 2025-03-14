class CreateTasks < ActiveRecord::Migration[7.1]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :ingredients
      t.string :steps
      t.boolean :done
      t.references :world, null: false, foreign_key: true

      t.timestamps
    end
  end
end
