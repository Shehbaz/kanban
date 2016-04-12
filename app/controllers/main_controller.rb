class MainController < ApplicationController

  def index
    @boards = current_user.boards.includes(:lists)
    render :index
  end
end
