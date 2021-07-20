class BoardsController < ApplicationController
  before_action :get_board, only: [:new, :create] 

  def index
    @boards = Board.where(user = current_user)
  end

  def new
    
  end

  def create
    
  end

  def edit 

  end

  def destroy

  end

  private

  def get_board
    @board = Board.new
  end

end
