class FavoriteArtistsController < ApplicationController



  def favorite 
    @fes_artist = FesArtist.find(params[:id])
    @id_name = "#favorite-link-#{@fes_artist.artist_id}"
    favorite = current_user.favorite_artists.new(artist_id: @fes_artist.artist_id)
    favorite.save
  end


  def unfavorite
    @id = FavoriteArtist.find(params[:id]).artist_id
    @artist = FesArtist.find_by(artist_id: @id)
    @id_name = "#favorite-link-#{@id}"

    @fes_artist2 = FavoriteArtist.find(params[:id])
    @fes_artist2.destroy
  end
end

