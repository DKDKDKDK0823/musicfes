class FestivalsController < ApplicationController
  def index
    @festivals = Festival.all
    
  end

  def show
    @festival = Festival.find(params[:id])
  end

  def new
    @festival = Festival.new
  end

  def create
    @festival = Festival.new(festival_params)
    @festival.save
    redirect_to festivals_path(@festival)
  end

  def destroy
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

  private

  def festival_params
    params.require(:festival).permit(:name, :price, :image, :genre, :day, :regions, :introduction)
  end
   
end
