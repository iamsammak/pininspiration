class Api::PinsController < ApplicationController
  LIMIT = 15

  def index
    cloud_name = ENV['CLOUD_NAME']
    upload_preset = ENV['UPLOAD_PRESET']

    if params[:board_id]
      @pins = Pin.where(board_id: params[:board_id])
    elsif params[:user_id]
      @pins = Pin.where(user_id: params[:user_id])
    elsif params[:keyword]
      like_keyword = "%#{params[:keyword]}%".downcase
      @pins = Pin.where("LOWER(TITLE) LIKE ? OR LOWER(DESCRIPTION) LIKE ?", like_keyword, like_keyword)
    else
      @pins = Pin.all.order("created_at ASC").page(params[:page]).per(15)
    end
    render :index

	end

  def show
		@pin = Pin.find(params[:id])
    render :show
	end

  def create
    @pin = Pin.new(pin_params)
    if @pin.save
      render :show
    else
      render json: @pin.errors.full_messages, status: 422
    end
  end

  def update
    @pin = Pin.find(params[:id])
    if @pin.update(pin_params)
      render :show
    else
      render json: @pin.errors.full_messages, status: 422
    end
  end

  def destroy
    @pin = Pin.find(params[:id])
    @pin.destroy
    render "api/pins/show"
  end


  private

  def pin_params
    params.require(:pin).permit(:title, :description, :user_id, :board_id, :url, :image_url)
  end
end
