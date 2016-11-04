class Api::BoardsController < ApplicationController
  def index
		@boards = Board.where(user_id: params[:user_id])
    render :index
	end

	def show
		@board = Board.find(params[:id])
    render :show
	end

  def create
    @board = Board.new(board_params)
    if @board.save
      render :show
    else
      render json: @board.errors.full_messages, status: 422
    end
  end

  def update
    @board = Board.find(params[:id])

    if @board.update(board_params)
      render :show
    else
      render json: @board.errors.full_messages, status: 422
    end
  end

  def destroy
    @board = Board.find(params[:id])
    @board.destroy
    render 'api/boards/show'
    # if @board.destroy
    #   render json: params[:id]
    # else
    #   render json: @board.errors.full_messages, status: 422
    # end
  end


  private

  def board_params
    params.require(:board).permit(:title, :description, :user_id)
  end
end
