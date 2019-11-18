class UsersController < ApplicationController
  before_action :baria_user, only: [:edit, :update]

  def show
    @user = User.find(params[:id])
    @userfestivals = @user.festivals
    @favoriteartist = FavoriteArtist.where(user_id: @user.id)
   
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to ("/users/#{current_user.id}")
      flash[:success] = "プロフィールの編集が完了しました。"
    else
      render 'edit'
    end
  end

  def favorite_festivals
    @user = User.find_by(id: params[:id])
    @favoritefestivals = FavoriteFestival.where(user_id: @user.id)
  end

  def favorite_artists
    @user = User.find_by(id: params[:id])
    @favoriteartist = FavoriteArtist.where(user_id: @user.id)
  end



  private

  def user_params
    params.require(:user).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :email, :introduction, :profile_image, :name)
  end

  def baria_user
      user = User.find(params[:id])
    if user.id != current_user.id
      redirect_to user_path(current_user.id)
    end
  end
end