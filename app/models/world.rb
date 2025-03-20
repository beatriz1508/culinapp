class World < ApplicationRecord
  belongs_to :path
  has_many :tasks, dependent: :destroy
end
