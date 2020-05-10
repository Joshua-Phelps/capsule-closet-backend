class OutfitBoardsController < ApplicationController
  def create
    board = Board.new(board_params)
    if board.save
      params[:outfits].each{|outfit_id| OutfitBoard.create(board_id: board.id, outfit_id: outfit_id)}
      render json: board 
    else 
      ## error handle 
    end 
  end

  def update
    board = Board.find(board_params[:id])
    board.update(board_params)
    board.update_board_outfits(params[:outfits])
    render json: board
  end

  def destroy
    board = Board.find(board_params[:id])
    board.outfit_boards.destroy_all
    board.destroy
    render json: {sucess: 'Deleted'}
  end

  private 

  def board_params
    params.require(:board).permit(:id, :user_id, :name, :outfits)
  end
end
