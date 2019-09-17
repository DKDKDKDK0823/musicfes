class FavoriteFestivalsController < ApplicationController
  def index
  end

  def favorite
    favorite = current_user.favorites.new(festival_id: @festival.id)
    favorite.save
  end

  def unfavorite
    favorite = current_user.favorites.find_by(product_id: @festival.id)
    favorite.destroy
  end

  private
  def set_variables
    @festival = Festival.find(params[:festival_id])
    @id_name = "#favorite-link-#{@festival.id}"
  end


end
