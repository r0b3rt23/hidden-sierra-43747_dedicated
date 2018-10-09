class Brand < ApplicationRecord
  belongs_to :specific
  has_many :variants
  has_many :products
  has_attached_file :image_brand, styles: {large: "500x500", medium: "300x300", thumb: "150x150>"}, default_url: "/image//missing.png"
  validates_attachment_content_type :image_brand, content_type: /\Aimage\/.*\z/

  extend FriendlyId
  friendly_id :name, use: :slugged
end
