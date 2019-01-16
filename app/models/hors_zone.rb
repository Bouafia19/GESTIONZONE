class HorsZone < ApplicationRecord
  belongs_to :zone, required: false
  has_many :lots
end
