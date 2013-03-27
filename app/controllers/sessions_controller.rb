class SessionsController < ApplicationController
  def new 
    #just rendering a view
  end

  def create

  user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to products_path, :notice => "Logged In!!"
    else
      flash.now.alert = "Invalid email or password"
      render :new
    end
  end
  

  def destroy
    session[:user_id] = nil
    redirect_to products_path, :notice => "Logged Out!"
  end
end
