class Subcategory < ApplicationRecord
  belongs_to :category
  has_many :specifics
  has_many :products
  has_attached_file :image_subcategory, styles: {large: "600x600>", medium: "300x300>", thumb: "150x150#"}, default_url: "image/:style/missing.png"
  validates_attachment_content_type :image_subcategory, content_type: /\Aimage\/.*\z/

  extend FriendlyId
    friendly_id :name, use: :slugged
end
