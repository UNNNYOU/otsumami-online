class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def settings
    @user = User.find(params[:id])
    @prefectures = Prefecture.all
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      render :settings, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :prefecture_id)
  end
end
