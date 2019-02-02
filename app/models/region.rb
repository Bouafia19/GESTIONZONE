class Region < ApplicationRecord
  has_many :states
  belongs_to :country
end
