class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @userfestivals = @user.festivals
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:success] = "プロフィールの編集が完了しました。"
      redirect_to ("/users/#{@user.id}")
    else
      render :edit
    end
  end

  def favorite_festivals
    @user = User.find_by(id: params[:id])
    @favoritefestivals = FavoriteFestival.where(user_id: @user.id)
  end

  def create
  end

  def destroy
    
  end


  private

  def user_params
    params.require(:user).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :email, :introduction, :profile_image, :name)
  end

end