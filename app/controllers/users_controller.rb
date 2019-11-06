class UsersController < ApplicationController
  before_action :set_params, only: %i[show edit update destroy]

  def index
    @users = User.all
  end

  def show
  end

  def edit
  end

  def update
    @user.update

    redirect_to user_path(@user)
  end

  def destroy
    @user.destroy

    redirect_to users_path
  end


  private

  def set_params
    @user = User.find(params[:id])
  end
end
