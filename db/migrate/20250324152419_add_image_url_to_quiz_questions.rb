class AddImageUrlToQuizQuestions < ActiveRecord::Migration[7.1]
  def change
    add_column :quiz_questions, :image_url, :string
  end
end
