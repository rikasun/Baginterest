class Api::PinboardsController < ApplicationController
  def create
    @pinboard = Pinboard.new(pinboard_params)
    if @pinboard.save
      render :show
    else
      render json: @pinboard.errors.full_messages, status: 422
    end
  end
  

  def destroy

     @pinboard = Pinboard.find(params[:id])
    if @pinboard
      @pinboard.destroy
      render :show
    else
      render json: @pinboard.errors.full_messages, status: 401
    end
  end 


  def pinboard_params
    params.require(:pinboard).permit(:pin_id, :board_id)
  end
end
