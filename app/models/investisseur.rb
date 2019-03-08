class Investisseur < ApplicationRecord
  has_merit

  has_many :lots

end
