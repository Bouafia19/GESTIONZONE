class Lot < ApplicationRecord
  belongs_to :zone ,required: false
  belongs_to :ZoneActivite ,required: false
  belongs_to :ZoneIndustrielle ,required: false
  belongs_to :PromotionImmobiliere ,required: false
  belongs_to :HorsZone ,required: false

  has_attached_file :photo, styles: { medium: "1100x800>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/

  has_attached_file :document
  validates_attachment :document, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document) }






end


