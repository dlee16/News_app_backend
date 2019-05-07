class FavoritesController < ApplicationController

  def index
    @favorites = Favorite.all
    render json: @favorites
  end

  def show
      @favorite = Favorite.find(params[:id])
      render json: @favorite
  end

  def create
      @favorite = Favorite.create(favorites_params)
       render json: @favorite
  end

  def update
      @favorite = Favorite.find(params[:id])
       render json: @favorite
  end

  def delete
      @favorite = Favorite.find(params[:id])
      @favorite.destroy
  end

  private

  def favorites_params
      params.require(:favorite).permit(:user_id, :article_id)
  end

end
