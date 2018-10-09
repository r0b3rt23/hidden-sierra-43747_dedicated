module Spree
  class HomeController < Spree::StoreController
    helper 'spree/products'
    respond_to :html

    def index
      @categories = Category.all.sort_by &:name
    end
  end

end
