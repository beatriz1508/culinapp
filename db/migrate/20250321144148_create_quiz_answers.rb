class CreateQuizAnswers < ActiveRecord::Migration[7.1]
  def change
    create_table :quiz_answers do |t|
      t.references :quiz_question, null: false, foreign_key: true
      t.string :content
      t.boolean :correct

      t.timestamps
    end
  end
end

