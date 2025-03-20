class Path < ApplicationRecord
  has_many :journeys, dependent: :destroy
  has_many :worlds, dependent: :destroy
end
