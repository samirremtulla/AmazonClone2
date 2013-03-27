class UsersController < ApplicationController
  def new
    #create new user
    @user = User.new
  end

  def create
    #submit
    @user = User.new(params[:user])

    if @user.save
      redirect_to products_path, notice: "Welcome!"
    else
      render action: :new
    end
  end
end
