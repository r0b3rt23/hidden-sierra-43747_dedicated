class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :edit, :update, :destroy]
  before_action :must_be_admin, only: [:new, :edit, :update, :destroy]
  helper_method :taxon

  def index
    @categories = Category.all.sort_by &:name
    @taxonomies = Spree::Taxonomy.all
  end

  def show
    @taxonomies = Spree::Taxonomy.all
    @subcategories = @category.subcategories.sort_by &:name
    validate_url_category
  end

  def new
    @category = Category.new
  end

  def edit
  end

  def create
    @category = Category.new(category_params)

    respond_to do |format|
      if @category.save
        format.html { redirect_to @category, notice: 'Category was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @category.update(category_params)
        format.html { redirect_to @category, notice: 'Category was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @category.destroy
    respond_to do |format|
      format.html { redirect_to categories_url, notice: 'Category was successfully destroyed.' }
    end
  end

  private
    def set_category
      @category = Category.friendly.find(params[:id])
    end

    def category_params
      params.require(:category).permit(:name, :image_category, :cgroup, :sort_order, :active)
    end

    def must_be_admin
      unless current_spree_user && current_spree_user.admin?
        redirect_to categories_path, notice: "Authorization Failure"
      end
    end

    def validate_url_category
      unless current_spree_user && current_spree_user.admin?
        url = request.path_info
        if url.match("/categories/grocery") || url.match("/categories/clothing") || url.match("/categories/clothes") || url.match("/categories/sports")
        else
          redirect_to categories_path, alert: "Authorization Failure"
        end
    end
    end

  end
