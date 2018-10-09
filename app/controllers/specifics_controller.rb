class SpecificsController < ApplicationController
  before_action :set_specific, only: [:show, :edit, :update, :destroy]
  before_action :must_be_admin, only: [:new, :edit, :update, :destroy]

  def index
    @specifics = Specific.all.order('name ASC').page(params[:page]).per(12)
    @specifics_admin = Specific.all.order('name ASC')
  end

  def show
    @brands = @specific.brands.sort_by &:name
  end

  def new
    @specific = Specific.new
  end

  def edit
  end

  def create
    @specific = Specific.new(specific_params)

    respond_to do |format|
      if @specific.save
        format.html { redirect_to @specific, notice: 'Specific was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end
  def update
    respond_to do |format|
      if @specific.update(specific_params)
        format.html { redirect_to @specific, notice: 'Specific was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end
  def destroy
    @specific.destroy
    respond_to do |format|
      format.html { redirect_to specifics_url, notice: 'Specific was successfully destroyed.' }
    end
  end

  private
    def set_specific
      @specific = Specific.friendly.find(params[:id])
    end

    def specific_params
      params.require(:specific).permit(:name, :image_specific, :subcategory_id, :category_id)
    end

    def must_be_admin
      unless current_spree_user && current_spree_user.admin?
        redirect_to subcategories_path, notice: "Authorization Failure"
      end
    end
  end
