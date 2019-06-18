class UsersController < ApplicationController

  def index
    @user = User.order(:id)
  end

  def show
    @user = User.find(params[:id])
  end

end
