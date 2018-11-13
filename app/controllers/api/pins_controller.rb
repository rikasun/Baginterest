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
    @user = User.find_by(id: params[:user_id])
    if @user
      @pins = @user.pins
    else
      @pins = Pin.all
    end
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
      render :sow
    else
      render json: @pin.errors.full_messages, status: 401
    end
  end


  private

  def pin_params
    params.require(:pin).permit(:description, :author_id, :url, :photo)
  end

end
