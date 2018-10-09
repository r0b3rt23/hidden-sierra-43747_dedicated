class BrandsController < ApplicationController
  before_action :set_brand, only: [:show, :edit, :update, :destroy]
  before_action :must_be_admin, only: [:new, :edit, :updated, :destroy]

  def index
    @brands = Brand.all.order('name ASC').page(params[:page]).per(12)
    @brands_admin = Brand.all.order('name ASC')
  end

  def show
  end

  def new
    @brand = Brand.new
  end

  def edit
  end

  def create
    @brand = Brand.new(brand_params)

    respond_to do |format|
      if @brand.save
        format.html { redirect_to @brand, notice: 'Brand was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @brand.update(brand_params)
        format.html { redirect_to @brand, notice: 'Brand was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @brand.destroy
    respond_to do |format|
      format.html { redirect_to brands_url, notice: 'Brand was successfully destroyed.' }
    end
  end

  private
    def set_brand
      @brand = Brand.friendly.find(params[:id])
    end

    def brand_params
      params.require(:brand).permit(:name, :image_brand, :specific_id)
    end

    def must_be_admin
      unless current_spree_user && current_spree_user.admin?
        redirect_to subcategories_path, notice: "Authorization Failure"
      end
    end
  end
