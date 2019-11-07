class UsersController < ApplicationController
  before_action :set_params, only: %i[show edit update destroy]

  def index
    @users = User.all.order(name: "ASC")
  end

  def show
  end

  def edit
  end

  def update
    @user.update(user_params)
    flash[:notice] = "User with email #{@user.email} updated"
    redirect_to user_path(@user)
  end

  def destroy
    @user.destroy
    flash[:alert] = "User with email #{@user.email} deleted"
    redirect_to users_path
  end


  private

  def set_params
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :gender, :address)
  end
end
