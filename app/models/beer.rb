class Beer < ApplicationRecord
  has_many :beer_hops, dependent: :destroy
  has_many :hops, through: :beer_hops
  validates :name, presence: true, uniqueness: true
end
