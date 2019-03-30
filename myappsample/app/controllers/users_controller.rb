class UsersController < ApplicationController
  def index
    @users = User.all.order(created_at: :desc)
  end

  def show
    @users = User.find_by(id: params[:id])
  end
end
