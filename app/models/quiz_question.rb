class QuizQuestion < ApplicationRecord
  has_many :quiz_answers, dependent: :destroy
  accepts_nested_attributes_for :quiz_answers, allow_destroy: true
end
