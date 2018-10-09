module Spree
  module BaseHelper
    def create_dropdown(variant)
      price = variant.can_supply? ?  variant.price : Spree.t(:out_of_stock)
      "#{variant.options_text.sub('Size: ', '')} - #{price}"
    end
  end
end
