class UsersController < ApplicationController
  def index
    @user = User.all
  end

  def show
    @author = User.find(params[:id].to_i)

  end

  def new
  end

  def edit
  end

  def update
  end
end
