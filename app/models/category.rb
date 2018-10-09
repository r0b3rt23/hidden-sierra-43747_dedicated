class Category < ApplicationRecord
  has_many :subcategories
  has_many :variants
  has_many :products
  has_many :taxonomies
  has_many :taxons
  has_many :prototypes
  has_attached_file :image_category, styles: {large: "600x600>", medium: "300x300>", thumb: "150x150#"}, default_url: "image/:style/missing.png"
  validates_attachment_content_type :image_category, content_type: /\Aimage\/.*\z/

  extend FriendlyId
  friendly_id :name, use: :slugged
end
