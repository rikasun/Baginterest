class Api::PinsController < ApplicationController

  def create
    @pin = Pin.new(pin_params)
    @pin.author_id = current_user.id
    if @pin.save
      render :show
    else
      render json: @pin.errors.full_messages, status: 422
    end
  end

  def index
    @user = User.find(params[:user_id])
    @pins = @user.pins
  end

  def show
    @pin = Pin.find(params[:id])
    if @pin
      render :show
    else
      render json: @pin.errors.full_messages, status: 404
    end
  end

  def update
    @pin = current_user.pins.find(params[:id])
    if @pin.update_attributes(pin_params)
      render :show
    else
      render json: @pin.errors.full_messages, status: 422
    end
  end

  def destroy
    @pin = current_user.pins.find(params[:id])
    if @pin
      @pin.destroy
    else
      render json: @pin.errors.full_messages, status: 401
    end
  end


  private

  def pin_params
    params.require(:pin).permit(:description, :author_id, :url, :photo)
  end

end
