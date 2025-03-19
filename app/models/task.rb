class Task < ApplicationRecord
  belongs_to :world
  has_many :ingredients
end
