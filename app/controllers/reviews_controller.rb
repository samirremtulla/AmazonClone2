class ReviewsController < ApplicationController

  def new
    @comment = Review.new
  end

  def create
    @comment = Review.new(params[:comment])

    if @comment.save
      redirect_to products_path, notice: "Thank you for writing a comment!"
    else
      render action: :new
    end      
  end

  def edit

  end

  def update

  end

  def show
    

  end

  def destroy

  end
end
