class SubcategoriesController < ApplicationController
  before_action :set_subcategory, only: [:show, :edit, :update, :destroy]
  before_action :must_be_admin, only: [:new, :edit, :update, :destroy]

  def index
    @categories = Category.all.sort_by &:name
    @subcategories = Subcategory.all.order('name ASC').page(params[:page]).per(12)
    @subcategories_admin = Subcategory.all.order('name ASC')
  end

  def show
    @specifics = @subcategory.specifics.sort_by &:name
  end

  def new
    @subcategory = Subcategory.new
  end

  def edit
  end

  def create
    @subcategory = Subcategory.new(subcategory_params)

    respond_to do |format|
      if @subcategory.save
        format.html { redirect_to @subcategory, notice: 'Subcategory was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @subcategory.update(subcategory_params)
        format.html { redirect_to @subcategory, notice: 'Subcategory was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end
  def destroy
    @subcategory.destroy
    respond_to do |format|
      format.html { redirect_to subcategories_url, notice: 'Subcategory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_subcategory
      @subcategory = Subcategory.friendly.find(params[:id])
    end

    def subcategory_params
      params.require(:subcategory).permit(:name, :image_subcategory, :category_id)
    end

    def must_be_admin
      unless current_spree_user && current_spree_user.admin?
        redirect_to subcategories_path, notice: "Authorization Failure"
      end
    end

  end
