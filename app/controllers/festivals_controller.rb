class FestivalsController < ApplicationController

  def index
    @festival = Festival.all.page(params[:page]).per(6)
    if @searched_festivals
      @fastivals = @searched_festivals.where(is_deleted: ["false"]).page(params[:page]).reverse_order
    else
      @festivals = Festival.where(is_deleted: ["false"]).page(params[:page]).reverse_order
    end
    @festival = Festival.all.page(params[:page]).per(6)
  end

  def search
    @q = Festival.search(search_params)
    @festivals = @q.result(distinct: true)
  end


  def show
    @festival = Festival.find(params[:id])   
    @festivaluser = @festival.user
    @fes_artists = @festival.fes_artists
  end


  def new
    @artists = Artist.all
    @festival = Festival.new
    @festival.fes_artists.build
  end

  def create
    @festival = Festival.new(festival_params)
    @festival.user_id = current_user.id
    @festival.save
    redirect_to festivals_path
  end


  def edit
    @festival = Festival.find(params[:id])
    @artists = Artist.all
    @festival.fes_artists.build
  end

  def update
    @festival = Festival.find(params[:id])

    if @festival.update(festival_params)
      flash[:success] = "編集完了"
      redirect_to ("/festivals/#{@festival.id}")
    else
      render :edit
    end

  end

  def destroy
    @festival = Festival.find(params[:id])
    if @festival.destroy
      flash[:notice] = "destroy successfully"
      redirect_to ("/festivals")
    else
      render :edit
    end
  end

  private

  def festival_params
    params.require(:festival).permit(:name, :price, :genre, :day, :regions, :latitude, :longitude, :introduction, :adress, :fes_artist_id, images: [], fes_artists_attributes:[:id, :artist_id, :festival_id, :_destroy])
  end

  def search_params
    params.require(:festival).permit(:name)
  end


   
end