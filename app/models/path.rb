class Path < ApplicationRecord
  has_many :journeys
  has_many :worlds
end
