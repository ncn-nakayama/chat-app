class RoomsController < ApplicationController
  
  def index
  end
  # Roomインスタンス(view/rooms/new.html.erb)を@roomに代入
  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

   private
  # permit=ストロングパラメーター
  def room_params
    params.require(:room).permit(:name, user_ids: [])
  end
end
