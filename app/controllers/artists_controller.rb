class ArtistsController < ApplicationController
  def new
     @artists = Artist.all
     @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params)
    @artist.save
    redirect_to ("/festivals/new")
  end

  def destroy
  end

  def edit
  end

  def update
  end

  private

  def artist_params
    params.require(:artist).permit(:name, :image_id)
  end

end
