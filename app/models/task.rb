class Task < ApplicationRecord
  belongs_to :world
  has_many :ingredients, dependent: :destroy
  has_many :reviews
end
