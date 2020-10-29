class FreeCuponsController < ApplicationController
  before_action :authenticate_user!
  def index
    @free_cupon = free_cupon.all
  end

  def new 
    @free_cupon= free_cupon.new
  end

  def create
    @free_cupon = free_cupon.new(free_cupon_params)
    if @free_cupon.save
      redirect_to free_cupon_path, notice: "已領取復興卷"
    else
      render :new
    end
  end
 
  private

  def free_cupon_params
    params.require(:user).permit(:compony,:serial_number,:phone)
  end

  def find_free_cupon
    @free_cupont = Free_cupon.find(params [:id])
  end 
end


