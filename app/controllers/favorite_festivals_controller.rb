class FavoriteFestivalsController < ApplicationController

  before_action :set_variables


  def favorite 
    favorite = current_user.favorite_festivals.new(festival_id: @festival.id)
    favorite.save
  end

  def unfavorite
    favorite = current_user.favorite_festivals.find_by(festival_id: @festival.id)
    favorite.destroy
  end

  private
  def set_variables
    @festival = Festival.find(params[:id])
    @id_name = "#favorite-link-#{@festival.id}"
  end


end

