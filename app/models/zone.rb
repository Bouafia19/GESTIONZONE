class Zone < ApplicationRecord
  has_many :lots
  has_many :zone_industrielles
  has_many :zone_activites
  has_many :hors_zones
  has_many :promotion_immobilieres
end
