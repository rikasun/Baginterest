class Api::BoardsController < ApplicationController

  def create
    @board = Board.new(board_params)
    @board.author_id = current_user.id
    if @board.save
      render :show
    else
      # debugger
      render json: @board.errors.full_messages, status: 422
    end
  end

  def index
    @user = User.find(params[:user_id])
    @boards = @user.boards
  end

  def show
    @board = Board.find(params[:id])
    if @board
      render :show
    else
      render json: @board.errors.full_messages, status: 404
    end
  end

  def update
    @board = current_user.boards.find(params[:id])
    if @board.update_attributes(board_params)
      render :show
    else
      render json: @board.errors.full_messages, status: 422
    end
  end

  def destroy
    @board = current_user.boards.find(params[:id])
    if @board
      @board.destroy
    else
      render json: @board.errors.full_messages, status: 401
    end
  end


  private

  def board_params
    params.require(:board).permit(:board_name, :author_id)
  end
end
