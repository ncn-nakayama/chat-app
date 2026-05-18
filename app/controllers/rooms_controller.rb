class RoomsController < ApplicationController
  # Roomインスタンス(view/rooms/new.html.erb)を@roomに代入
  def new
    @room = Room.new
  end
end
