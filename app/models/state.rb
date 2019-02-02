class State < ApplicationRecord
  belongs_to :country
  belongs_to :region, optional: true

end
