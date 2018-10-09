class Specific < ApplicationRecord
  belongs_to :subcategory
  has_many :brands
  has_many :products
  has_attached_file :image_specific, styles: {large: "600x600>", medium: "300x300>", thumb: "150x150> "}, default_url: "image/:style/missing.png"
  validates_attachment_content_type :image_specific, content_type: /\Aimage\/.*\z/

  extend FriendlyId
  friendly_id :name, use: :slugged
end
