class FestivalsController < ApplicationController
  def index
    @festivals = Festival.all.order(created_at: :desc)
    @festivals = Festival.page(params[:page]).per(6)
  end

  def show
    @festival = Festival.find(params[:id])   
    @festivaluser = @festival.user
  end

  def new
    @artists = Artist.all
    @festival = Festival.new
    # @festival.fes_artists.build
  end

  def create
    @festival = Festival.new(festival_params)
    @festival.user_id = current_user.id
    @festival.save
    redirect_to festivals_path
  end


  def edit
    @festival = Festival.find(params[:id])
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
    params.require(:festival).permit(:name, :price, :image, :genre, :day, :regions, :introduction, artist_attributes:[:id, :artist_id, :_destroy])
  end


   
end
