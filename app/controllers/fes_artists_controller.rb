class FesArtistsController < ApplicationController
  def new
    @artists = Artist.all
    @fes_artist = FesArtist.new
  end

  def create
    @fes_artist = FesArtist.new(fes_artist_params)
    @fes_artist.save
    redirect_to ('/festivals/')
  end

  def destroy
  end

  private

  def fes_artist_params
    params.require(:fes_artist).permit(:artists_id, :festivals_id)
  end

end
