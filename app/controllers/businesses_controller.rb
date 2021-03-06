class BusinessesController < ApplicationController
  def index
    @businesses = Business.all
  end

  def new
    @type = Type.find(params[:type_id])
    @business = @type.businesses.new
  end

  def create
    @type = Type.find(params[:type_id])
    @business = @type.businesses.new(business_params)
    if @business.save
      redirect_to type_path(@business.type)
    else
      render :new
    end
  end

  def show
    @type = Type.find(params[:type_id])
    @business = Business.find(params[:id])
  end

  def edit
    @type = Type.find(params[:type_id])
    @business = Business.find(params[:id])
  end

  def update
    @type = Type.find(params[:type_id])
    @business= Business.find(params[:id])
    if @business.update(business_params)
      redirect_to type_business_path(@type, @business)
    else
      render :edit
    end
  end

  def destroy
    @business = Business.find(params[:id])
    @business.destroy
    redirect_to type_path(@business.type)
  end

  private
  def business_params
    params.require(:business).permit(:name, :address, :phone_number, :web_address, :hours)
  end

end
