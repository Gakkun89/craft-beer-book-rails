class Hop < ApplicationRecord
  has_many :beer_hops
  validates :name, presence: true, uniqueness: true
end
