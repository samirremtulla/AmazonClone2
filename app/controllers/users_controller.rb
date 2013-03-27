class UsersController < ApplicationController
  def new
    #create new user
    @user = User.new
  end

  def create
    #submit
    @user = User.new(params[:user])

    if @user.save
      session[:user_id] = @user.id
      redirect_to products_path
    else
      render action: :new
    end
  end
end
